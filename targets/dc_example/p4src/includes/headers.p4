header_type ethernet_t {
    fields {
        dstAddr : 48;
        srcAddr : 48;
        etherType : 16;
    }
}

header_type snap_header_t {
    fields {
        dsap : 8;
        ssap : 8;
        control_ : 8;
        oui : 24;
        type_ : 16;
    }
}

header_type roce_header_t {
    fields {
        ib_grh : 320;
        ib_bth : 96;
    }
}

header_type roce_v2_header_t {
    fields {
        ib_bth : 96;
    }
}

header_type fcoe_header_t {
    fields {
        version : 4;
        type_ : 4;
        sof : 8;
        rsvd1 : 32;
        ts_upper : 32;
        ts_lower : 32;
        size_ : 32;
        eof : 8;
        rsvd2 : 24;
    }
}

header_type cpu_header_t {
    fields {
        qid : 3;
        pad : 1;
        reason_code : 12;
        rxhash : 16;
        bridge_domain : 16;
        ingress_lif : 16;
        egress_lif : 16;
        lu_bypass_ingress : 1;
        lu_bypass_egress : 1;
        pad1 : 14;
        etherType : 16;
    }
}

header_type vlan_tag_t {
    fields {
        pcp : 3;
        cfi : 1;
        vid : 12;
        etherType : 16;
    }
}

header_type vlan_tag_3b_t {
    fields {
        pcp : 3;
        cfi : 1;
        vid : 4;
        etherType : 16;
    }
}
header_type vlan_tag_5b_t {
    fields {
        pcp : 3;
        cfi : 1;
        vid : 20;
        etherType : 16;
    }
}

header_type ieee802_1ah_t {
    fields {
        pcp : 3;
        dei : 1;
        uca : 1;
        reserved : 3;
        i_sid : 24;
    }
}

header_type mpls_t {
    fields {
        label : 20;
        tc : 3;
        bos : 1;
        ttl : 8;
    }
}

header_type ipv4_t {
    fields {
        version : 4;
        ihl : 4;
        diffserv : 8;
        totalLen : 16;
        identification : 16;
        flags : 3;
        fragOffset : 13;
        ttl : 8;
        protocol : 8;
        hdrChecksum : 16;
        srcAddr : 32;
        dstAddr: 32;
    }
}

header_type ipv6_t {
    fields {
        version : 4;
        trafficClass : 8;
        flowLabel : 20;
        payloadLen : 16;
        nextHdr : 8;
        hopLimit : 8;
        srcAddr : 128;
        dstAddr : 128;
    }
}

header_type icmp_t {
    fields {
        type_ : 8;
        code : 8;
        hdrChecksum : 16;
    }
}

header_type icmpv6_t {
    fields {
        type_ : 8;
        code : 8;
        hdrChecksum : 16;
    }
}

header_type tcp_t {
    fields {
        srcPort : 16;
        dstPort : 16;
        seqNo : 32;
        ackNo : 32;
        dataOffset : 4;
        res : 4;
        flags : 8;
        window : 16;
        checksum : 16;
        urgentPtr : 16;
    }
}

header_type udp_t {
    fields {
        srcPort : 16;
        dstPort : 16;
        length_ : 16;
        checksum : 16;
    }
}

header_type sctp_t {
    fields {
        srcPort : 16;
        dstPort : 16;
        verifTag : 32;
        checksum : 32;
    }
}

header_type gre_t {
    fields {
        C : 1;
        R : 1;
        K : 1;
        S : 1;
        s : 1;
        recurse : 3;
        flags : 5;
        ver : 3;
        proto : 16;
    }
}

header_type nvgre_t {
    fields {
        tni : 24;
        reserved : 8;
    }
}

/* 8 bytes */
header_type erspan_header_v1_t {
    fields {
        version : 4;
        vlan : 12;
        priority : 6;
        span_id : 10;
        direction : 8;
        truncated: 8;
    }
}

/* 8 bytes */
header_type erspan_header_v2_t {
    fields {
        version : 4;
        vlan : 12;
        priority : 6;
        span_id : 10;
        unknown7 : 32;
    }
}

header_type ipsec_esp_t {
    fields {
        spi : 32;
        seqNo : 32;
    }
}

header_type ipsec_ah_t {
    fields {
        nextHdr : 8;
        length_ : 8;
        zero : 16;
        spi : 32;
        seqNo : 32;
    }
}

header_type arp_rarp_t {
    fields {
        hwType : 16;
        protoType : 16;
        hwAddrLen : 8;
        protoAddrLen : 8;
        opcode : 16;
    }
}

header_type arp_rarp_ipv4_t {
    fields {
        srcHwAddr : 48;
        srcProtoAddr : 32;
        dstHwAddr : 48;
        dstProtoAddr : 32;
    }
}

header_type eompls_t {
    fields {
        zero : 4;
        reserved : 12;
        seqNo : 16;
    }
}

header_type vxlan_t {
    fields {
        flags : 8;
        reserved : 24;
        vni : 24;
        reserved2 : 8;
    }
}

header_type nsh_t {
    fields {
        oam : 1;
        context : 1;
        flags : 6;
        reserved : 8;
        protoType: 16;
        spath : 24;
        sindex : 8;
    }
}

header_type nsh_context_t {
    fields {
        network_platform : 32;
        network_shared : 32;
        service_platform : 32;
        service_shared : 32;
    }
}

/* GENEVE HEADERS 
   3 possible options with known type, known length */ 
 
header_type genv_t { 
    fields { 
        ver : 2; 
        optLen : 6; 
        oam : 1; 
        critical : 1; 
        reserved : 6; 
        protoType : 16; 
        vni : 24; 
        reserved2 : 8; 
    } 
} 
 
#define GENV_OPTION_A_TYPE 0x000001 
/* TODO: Would it be convenient to have some kind of sizeof macro ? */ 
#define GENV_OPTION_A_LENGTH 2 /* in bytes */ 
 
header_type genv_opt_A_t { 
    fields { 
        optClass : 16; 
        optType : 8; 
        reserved : 3; 
        optLen : 5; 
        data : 32; 
    } 
} 
 
#define GENV_OPTION_B_TYPE 0x000002 
#define GENV_OPTION_B_LENGTH 3 /* in bytes */ 
 
header_type genv_opt_B_t { 
    fields { 
        optClass : 16; 
        optType : 8; 
        reserved : 3; 
        optLen : 5; 
        data : 64; 
    } 
} 
 
#define GENV_OPTION_C_TYPE 0x000003 
#define GENV_OPTION_C_LENGTH 2 /* in bytes */ 
 
header_type genv_opt_C_t { 
    fields { 
        optClass : 16; 
        optType : 8; 
        reserved : 3; 
        optLen : 5; 
        data : 32; 
    } 
} 
