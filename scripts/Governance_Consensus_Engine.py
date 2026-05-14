"""
TITAN GOVERNANCE: QUANTUM CONSENSUS ENGINE
CORE: WEIGHTED ENTROPY VOTING
LEVEL: TITAN (MODULE 2.1)
"""

import hashlib
import secrets

class TitanGovernance:
    def __init__(self):
        self.proposals = {}
        self.vault_balance = 1000000 # Modal dalam Koin Titan

    def submit_proposal(self, student_id, amount, proof_hash):
        # Hanya bisa submit jika punya bukti (proof_hash) dari exam yang lulus
        if len(proof_hash) < 64:
            print("REJECTED: Proof too weak for Titan Standards.")
            return
        self.proposals[student_id] = {"amount": amount, "votes": 0}
        print(f"PROPOSAL SUBMITTED: Student {student_id} requests {amount} coins.")

    def cast_weighted_vote(self, voter_power, target_student_id):
        """
        Voter Power didapat dari tingkat kesulitan exam yang diselesaikan.
        Semakin sulit exam yang lulus, semakin besar pengaruh suaranya.
        """
        if target_student_id in self.proposals:
            # Menambahkan berat suara secara non-linear
            weight = pow(voter_power, 2) 
            self.proposals[target_student_id]["votes"] += weight
            print(f"VOTE CAST: Power {weight} added to {target_student_id}")

    def finalize_funding(self, target_student_id):
        # Ambang batas konsensus berdasarkan energi jaringan
        if self.proposals[target_student_id]["votes"] > 10000:
            amount = self.proposals[target_student_id]["amount"]
            self.vault_balance -= amount
            print(f">>> [GRANT APPROVED] {amount} coins dispatched to {target_student_id}")
            print(f"Remaining Vault: {self.vault_balance}")
        else:
            print("CONSENSUS NOT REACHED: Energy insufficient.")

if __name__ == "__main__":
    gov = TitanGovernance()
    # Simulasi Siswa A lulus exam tingkat tinggi (Power 100)
    gov.submit_proposal("Titan_Siswa_A", 5000, "sha3_512_hash_of_advanced_exam_solution")
    gov.cast_weighted_vote(105, "Titan_Siswa_A") # Power 105^2 = 11025
    gov.finalize_funding("Titan_Siswa_A")
