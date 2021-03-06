//zero
`define ZeroWord        32'h00000000
`define ZeroRegAddr     5'b00000
`define ZeroBit         1'b0
`define ZeroByte        8'b00000000
`define ZeroOpt         6'b000000
`define ZeroDataLen     3'b000

//state
`define Enable          1'b1
`define Disable         1'b0

//bus
`define InstBus         31:0
`define AddrBus         31:0
`define RegBus          31:0
`define RegAddrBus      4:0
`define StallBus        4:0
`define OpcodeBus       6:0
`define OptBus          5:0
`define ShamtBus        4:0
`define RamDataBus      7:0

//icache
`define IcacheSize      256
`define IcacheBus       0:255
`define IcacheIndexBus  9:2
`define IcacheTagBus    17:10
`define IcacheTag       7:0

//dcache
`define DcacheSize      256
`define DcacheBus       0:255
`define DcacheIndexBus  9:2
`define DcacheIndex     7:0
`define DcacheTagBus    17:10
`define DcacheTag       7:0

//predictor
`define PredSize        128
`define PredBus         0:127
`define PredTagBus      12:0

//stall
`define NoStall         5'b00000
`define IfStall         5'b00001
`define IdStall         5'b00011
`define ExStall         5'b00111
`define MemStall        5'b01111
`define AllStall        5'b11111

//operation
`define LUI             6'b000001
`define AUIPC           6'b000010
`define JAL             6'b000011
`define JALR            6'b000100
`define BEQ             6'b000101
`define BNE             6'b000110
`define BLT             6'b000111
`define BGE             6'b001000
`define BLTU            6'b001001
`define BGEU            6'b001010
`define LB              6'b001011
`define LH              6'b001100
`define LW              6'b001101
`define LBU             6'b001110
`define LHU             6'b001111
`define SB              6'b010000
`define SH              6'b010001
`define SW              6'b010010
`define ADDI            6'b010011
`define SLTI            6'b010100
`define SLTIU           6'b010101
`define XORI            6'b010110
`define ORI             6'b010111
`define ANDI            6'b011000
`define SLLI            6'b011001
`define SRLI            6'b011010
`define SRAI            6'b011011
`define ADD             6'b011100
`define SUB             6'b011101
`define SLL             6'b011110
`define SLT             6'b011111
`define SLTU            6'b100000
`define XOR             6'b100001
`define SRL             6'b100010
`define SRA             6'b100011
`define OR              6'b100100
`define AND             6'b100101