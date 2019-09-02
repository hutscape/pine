graph TD;
style A fill:#209cee,stroke:none
style F fill:#209cee,stroke:none
style B fill:#f5f5f5,stroke:none
style C fill:#f5f5f5,stroke:none
style D fill:#f5f5f5,stroke:none
style E fill:#f5f5f5,stroke:none
style G fill:#f5f5f5,stroke:none
style H fill:#f5f5f5,stroke:none
style I fill:#f5f5f5,stroke:none
style J fill:#f5f5f5,stroke:none
A(START)-->G(Check temperature);
G-->H{Is room area cool enough?};
H-->|Yes|I(Turn OFF aircon);
H-->|No|J(Turn ON aircon);
I-->B(Sleep);
J-->B;
B-->C{Is interval over?};
C-->|Yes|D{Is total period over?};
C-->|No|B;
D-->|Yes|E(Turn OFF aircon);
D-->|No|G;
E-->F(STOP);
