import <iostream>;
import <vector>;
import <cstdlib>;
using namespace std;

// [0, range)
size_t bounded_rand(size_t range) {
    for (unsigned x, r;;)
        if (x = rand(), r = x % static_cast<unsigned>(range), x - r <= -static_cast<unsigned>(range))
            return static_cast<size_t>(r);
    return 0;
}

namespace pf {
    static vector<const char*> availible_proofs{};
    vector<const char*> &operator<<(vector<const char*> &vs, const char *s) {
        vs.push_back(s);
        return vs;
    }
    void init_proofs() {
        availible_proofs
            << 
            "(X,T), A ssq X. A is dense in X iff CLS{A} = X. "
            "(X,d) metric space. Prove this aligns with the defn from A2"
            <<
            "Show \\R is the completion of \\Q"
            <<
            "(X,d) complete. Then, A \\ssq X is complete iff A is closed."
            <<
            "Let C_b(X)={f:X->\\R|f cts, bd}. Consider ||f||_\\infty=sup{f(x):x\\in X}. "
            "Prove (C_b(X),||*||_\\infty) is a banach space."
            ;
    }
    const char *get_random_pf() {
        return availible_proofs[bounded_rand(availible_proofs.size())];
    }
};

int main() {
    srand(time(NULL));
    pf::init_proofs();
    cout << pf::get_random_pf() << endl;
}
