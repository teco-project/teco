//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tbaas {
    /// Bcos区块对象
    public struct BcosBlockObj: TCOutputModel {
        /// 区块哈希
        public let blockHash: String

        /// 区块高度
        public let blockNumber: Int64

        /// 区块时间戳
        public let blockTimestamp: String

        /// 打包节点ID
        public let sealer: String

        /// 打包节点索引
        public let sealerIndex: Int64

        /// 记录保存时间
        public let createTime: String

        /// 交易数量
        public let transCount: Int64

        /// 记录修改时间
        public let modifyTime: String

        enum CodingKeys: String, CodingKey {
            case blockHash = "BlockHash"
            case blockNumber = "BlockNumber"
            case blockTimestamp = "BlockTimestamp"
            case sealer = "Sealer"
            case sealerIndex = "SealerIndex"
            case createTime = "CreateTime"
            case transCount = "TransCount"
            case modifyTime = "ModifyTime"
        }
    }

    /// Bcos交易信息对象
    public struct BcosTransInfo: TCOutputModel {
        /// 所属区块高度
        public let blockNumber: Int64

        /// 区块时间戳
        public let blockTimestamp: String

        /// 交易哈希
        public let transHash: String

        /// 交易发起者
        public let transFrom: String

        /// 交易接收者
        public let transTo: String

        /// 落库时间
        public let createTime: String

        /// 修改时间
        public let modifyTime: String

        enum CodingKeys: String, CodingKey {
            case blockNumber = "BlockNumber"
            case blockTimestamp = "BlockTimestamp"
            case transHash = "TransHash"
            case transFrom = "TransFrom"
            case transTo = "TransTo"
            case createTime = "CreateTime"
            case modifyTime = "ModifyTime"
        }
    }

    /// 区块对象
    public struct Block: TCOutputModel {
        /// 区块编号
        public let blockNum: UInt64

        /// 区块数据Hash数值
        public let dataHash: String

        /// 区块ID，与区块编号一致
        public let blockId: UInt64

        /// 前一个区块Hash
        public let preHash: String

        /// 区块内的交易数量
        public let txCount: UInt64

        enum CodingKeys: String, CodingKey {
            case blockNum = "BlockNum"
            case dataHash = "DataHash"
            case blockId = "BlockId"
            case preHash = "PreHash"
            case txCount = "TxCount"
        }
    }

    /// 长安链合约执行结果
    public struct ChainMakerContractResult: TCOutputModel {
        /// 交易结果码
        public let code: Int64

        /// 交易结果码含义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeMessage: String?

        /// 交易ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let txId: String?

        /// Gas使用量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gasUsed: Int64?

        /// 合约返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 合约函数返回，base64编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case codeMessage = "CodeMessage"
            case txId = "TxId"
            case gasUsed = "GasUsed"
            case message = "Message"
            case result = "Result"
        }
    }

    /// 长安链交易查询结果
    public struct ChainMakerTransactionResult: TCOutputModel {
        /// 交易结果码
        public let code: Int64

        /// 交易结果码含义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeMessage: String?

        /// 交易ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let txId: String?

        /// Gas使用量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gasUsed: Int64?

        /// 区块高度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let blockHeight: Int64?

        /// 合约执行结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contractEvent: String?

        /// 合约返回信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 交易时间，单位是秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timestamp: Int64?

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case codeMessage = "CodeMessage"
            case txId = "TxId"
            case gasUsed = "GasUsed"
            case blockHeight = "BlockHeight"
            case contractEvent = "ContractEvent"
            case message = "Message"
            case timestamp = "Timestamp"
        }
    }

    /// 通道详情信息
    public struct ChannelDetailForUser: TCOutputModel {
        /// 通道名称
        public let channelName: String

        /// 当前组织加入通道的节点列表
        public let peerList: [PeerDetailForUser]

        enum CodingKeys: String, CodingKey {
            case channelName = "ChannelName"
            case peerList = "PeerList"
        }
    }

    /// 网络详情信息
    public struct ClusterDetailForUser: TCOutputModel {
        /// 网络ID
        public let clusterId: String

        /// 组织列表
        public let groupList: [GroupDetailForUser]

        /// 网络名称
        public let clusterName: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case groupList = "GroupList"
            case clusterName = "ClusterName"
        }
    }

    /// 背书组织及其节点列表
    public struct EndorserGroup: TCOutputModel {
        /// 背书组织名称
        public let endorserGroupName: String

        /// 背书节点列表
        public let endorserPeerList: [String]

        enum CodingKeys: String, CodingKey {
            case endorserGroupName = "EndorserGroupName"
            case endorserPeerList = "EndorserPeerList"
        }
    }

    /// 组织详情信息
    public struct GroupDetailForUser: TCOutputModel {
        /// 组织名称
        public let groupName: String

        /// 组织MSP Identity
        public let groupMSPId: String

        enum CodingKeys: String, CodingKey {
            case groupName = "GroupName"
            case groupMSPId = "GroupMSPId"
        }
    }

    /// 日志详情信息
    public struct LogDetailForUser: TCOutputModel {
        /// 日志行号
        public let lineNumber: UInt64

        /// 日志详情
        public let logMessage: String

        enum CodingKeys: String, CodingKey {
            case lineNumber = "LineNumber"
            case logMessage = "LogMessage"
        }
    }

    /// 节点详情信息
    public struct PeerDetailForUser: TCOutputModel {
        /// 节点名称
        public let peerName: String

        enum CodingKeys: String, CodingKey {
            case peerName = "PeerName"
        }
    }

    /// PeerSet
    public struct PeerSet: TCInputModel {
        /// 节点名称
        public let peerName: String

        /// 组织名称
        public let orgName: String

        public init(peerName: String, orgName: String) {
            self.peerName = peerName
            self.orgName = orgName
        }

        enum CodingKeys: String, CodingKey {
            case peerName = "PeerName"
            case orgName = "OrgName"
        }
    }

    /// 用于申请用户签名证书的结构体
    public struct SignCertCsr: TCInputModel {
        /// 用户签名证书的标识，会存在于用户申请的证书中
        public let certMark: String

        /// 用户申请签名证书所需要的证书请求文件的base64编码
        public let signCsrContent: String

        public init(certMark: String, signCsrContent: String) {
            self.certMark = certMark
            self.signCsrContent = signCsrContent
        }

        enum CodingKeys: String, CodingKey {
            case certMark = "CertMark"
            case signCsrContent = "SignCsrContent"
        }
    }

    /// 交易列表项信息
    public struct TransactionItem: TCOutputModel {
        /// 交易ID
        public let transactionId: String

        /// 交易hash
        public let transactionHash: String

        /// 创建交易的组织名
        public let createOrgName: String

        /// 交易所在区块号
        public let blockId: UInt64

        /// 交易类型（普通交易和配置交易）
        public let transactionType: String

        /// 交易创建时间
        public let createTime: String

        /// 交易所在区块高度
        public let blockHeight: UInt64

        /// 交易状态
        public let transactionStatus: String

        enum CodingKeys: String, CodingKey {
            case transactionId = "TransactionId"
            case transactionHash = "TransactionHash"
            case createOrgName = "CreateOrgName"
            case blockId = "BlockId"
            case transactionType = "TransactionType"
            case createTime = "CreateTime"
            case blockHeight = "BlockHeight"
            case transactionStatus = "TransactionStatus"
        }
    }
}
