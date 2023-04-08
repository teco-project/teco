//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import TecoCore

extension Tdid {
    /// 权威机构
    public struct Authority: TCOutputModel {
        /// 权威机构ID
        public let id: UInt64

        /// Did的ID
        public let didId: UInt64

        /// DID具体信息
        public let did: String

        /// 机构名称
        public let name: String

        /// 权威认证 1:已认证，2:未认证
        public let status: UInt64

        /// DID服务ID
        public let didServiceId: UInt64

        /// 应用ID
        public let contractAppId: UInt64

        /// 备注
        public let remark: String

        /// 注册时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registerTime: String?

        /// 认证时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recognizeTime: String?

        /// 生成时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 网络ID
        public let clusterId: String

        /// 群组ID
        public let groupId: UInt64

        /// 合约名称
        public let appName: String

        /// 链上标签
        public let labelName: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case didId = "DidId"
            case did = "Did"
            case name = "Name"
            case status = "Status"
            case didServiceId = "DidServiceId"
            case contractAppId = "ContractAppId"
            case remark = "Remark"
            case registerTime = "RegisterTime"
            case recognizeTime = "RecognizeTime"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case appName = "AppName"
            case labelName = "LabelName"
        }
    }

    /// bcos网络信息
    public struct BcosClusterItem: TCOutputModel {
        /// 网络索引id
        public let chainId: UInt64

        /// 网络名称
        public let chainName: String

        /// 机构数量
        public let agencyCount: UInt64

        /// 联盟id
        public let consortiumId: UInt64

        /// 创建时间
        public let createTime: String

        /// 过期时间
        public let expireTime: String

        /// 网络状态
        public let chainStatus: UInt64

        /// 资源 id
        public let resourceId: String

        /// 集群id
        public let clusterId: String

        /// 组织名称
        public let consortiumName: String

        /// 机构id
        public let agencyId: UInt64

        /// 续费状态
        public let autoRenewFlag: UInt64

        /// 网络模式
        public let totalNetworkNode: UInt64

        /// 创建节点数
        public let totalCreateNode: UInt64

        /// 总群组数量
        public let totalGroups: UInt64

        enum CodingKeys: String, CodingKey {
            case chainId = "ChainId"
            case chainName = "ChainName"
            case agencyCount = "AgencyCount"
            case consortiumId = "ConsortiumId"
            case createTime = "CreateTime"
            case expireTime = "ExpireTime"
            case chainStatus = "ChainStatus"
            case resourceId = "ResourceId"
            case clusterId = "ClusterId"
            case consortiumName = "ConsortiumName"
            case agencyId = "AgencyId"
            case autoRenewFlag = "AutoRenewFlag"
            case totalNetworkNode = "TotalNetworkNode"
            case totalCreateNode = "TotalCreateNode"
            case totalGroups = "TotalGroups"
        }
    }

    /// 联盟信息
    public struct ConsortiumItem: TCOutputModel {
        /// 联盟id
        public let id: UInt64

        /// 联盟名称
        public let name: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
        }
    }

    /// 部署合约
    public struct Contract: TCOutputModel {
        /// 应用名
        public let applyName: String

        /// 合约状态 true:已启用 false:未启用
        public let enable: Bool

        /// 合约CNS地址
        public let hash: String

        /// 合约CNS地址脱敏
        public let hashShow: String

        /// 部署机构DID
        public let weId: String

        /// 部署机构名称
        public let deployName: String

        /// 部署群组
        public let groupId: String

        /// 部署时间
        public let createTime: String

        enum CodingKeys: String, CodingKey {
            case applyName = "ApplyName"
            case enable = "Enable"
            case hash = "Hash"
            case hashShow = "HashShow"
            case weId = "WeId"
            case deployName = "DeployName"
            case groupId = "GroupId"
            case createTime = "CreateTime"
        }
    }

    /// 模板颁发量排名
    public struct CptIssueRank: TCOutputModel {
        /// 模板名称
        public let cptName: String

        /// 名次
        public let rank: Int64

        /// 颁发量
        public let count: Int64

        /// 应用名称
        public let applyName: String

        /// 应用ID
        public let applyId: UInt64

        enum CodingKeys: String, CodingKey {
            case cptName = "CptName"
            case rank = "Rank"
            case count = "Count"
            case applyName = "ApplyName"
            case applyId = "ApplyId"
        }
    }

    /// cpt集合数据
    public struct CptListData: TCOutputModel {
        /// ID信息
        public let id: UInt64

        /// 模版名称
        public let name: String

        /// 网络ID
        public let clusterId: String

        /// 群组ID
        public let groupId: UInt64

        /// 服务ID
        public let serviceId: UInt64

        /// 合约应用ID
        public let contractAppId: UInt64

        /// 凭证模板ID
        public let cptId: UInt64

        /// 模板类型，1: 系统模板，2: 用户模板，3:普通模板
        public let cptType: UInt64

        /// 凭证模版描述
        public let description: String

        /// 凭证模板Json
        public let cptJson: String

        /// 创建时间
        public let createTime: String

        /// 更新时间
        public let updateTime: String

        /// 创建者DID
        public let creatorDid: String

        /// 应用名称
        public let appName: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case serviceId = "ServiceId"
            case contractAppId = "ContractAppId"
            case cptId = "CptId"
            case cptType = "CptType"
            case description = "Description"
            case cptJson = "CptJson"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case creatorDid = "CreatorDid"
            case appName = "AppName"
        }
    }

    /// 凭证链上状态信息
    public struct CredentialStatus: TCInputModel, TCOutputModel {
        /// 凭证唯一id
        public let credentialId: String

        /// 凭证状态（0：吊销；1：有效）
        public let status: UInt64

        /// 凭证颁发者Did
        public let issuer: String

        /// 凭证摘要
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let digest: String?

        /// 凭证签名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let signature: String?

        /// 更新时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeStamp: UInt64?

        public init(credentialId: String, status: UInt64, issuer: String, digest: String, signature: String, timeStamp: UInt64) {
            self.credentialId = credentialId
            self.status = status
            self.issuer = issuer
            self.digest = digest
            self.signature = signature
            self.timeStamp = timeStamp
        }

        enum CodingKeys: String, CodingKey {
            case credentialId = "CredentialId"
            case status = "Status"
            case issuer = "Issuer"
            case digest = "Digest"
            case signature = "Signature"
            case timeStamp = "TimeStamp"
        }
    }

    /// did区块链网络信息
    public struct DidCluster: TCOutputModel {
        /// 链ID
        public let chainId: UInt64

        /// 链名称
        public let chainName: String

        /// 组织数量
        public let agencyCount: UInt64

        /// 联盟ID
        public let consortiumId: UInt64

        /// 创建时间
        public let createTime: String

        /// 过期时间
        public let expireTime: String

        /// 网络状态
        public let chainStatus: UInt64

        /// 资源ID
        public let resourceId: String

        /// 网络ID
        public let clusterId: String

        /// 联盟名称
        public let consortiumName: String

        /// 组织ID
        public let agencyId: UInt64

        /// 自动续费
        public let autoRenewFlag: UInt64

        /// 网络节点总数
        public let totalNetworkNode: UInt64

        /// 本机构节点数
        public let totalCreateNode: UInt64

        /// 总群组数
        public let totalGroups: UInt64

        /// DID总数
        public let didCount: UInt64

        enum CodingKeys: String, CodingKey {
            case chainId = "ChainId"
            case chainName = "ChainName"
            case agencyCount = "AgencyCount"
            case consortiumId = "ConsortiumId"
            case createTime = "CreateTime"
            case expireTime = "ExpireTime"
            case chainStatus = "ChainStatus"
            case resourceId = "ResourceId"
            case clusterId = "ClusterId"
            case consortiumName = "ConsortiumName"
            case agencyId = "AgencyId"
            case autoRenewFlag = "AutoRenewFlag"
            case totalNetworkNode = "TotalNetworkNode"
            case totalCreateNode = "TotalCreateNode"
            case totalGroups = "TotalGroups"
            case didCount = "DidCount"
        }
    }

    /// DID列表
    public struct DidData: TCOutputModel {
        /// 服务ID
        public let serviceId: UInt64

        /// 群组ID
        public let groupId: UInt64

        /// 应用名称
        public let appName: String

        /// did号码
        public let did: String

        /// 备注
        public let remark: String

        /// 权威机构认证状态 1未注册 2 未认证 3 已认证
        public let authorityState: Int64

        /// DID标签名称
        public let labelName: String

        /// DID创建时间
        public let createdAt: String

        /// 网络ID
        public let clusterId: String

        /// 联盟名称
        public let allianceName: String

        /// DID标签id
        public let labelId: UInt64

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case groupId = "GroupId"
            case appName = "AppName"
            case did = "Did"
            case remark = "Remark"
            case authorityState = "AuthorityState"
            case labelName = "LabelName"
            case createdAt = "CreatedAt"
            case clusterId = "ClusterId"
            case allianceName = "AllianceName"
            case labelId = "LabelId"
        }
    }

    /// DID服务基本信息
    public struct DidServiceInfo: TCOutputModel {
        /// DID服务索引
        public let id: UInt64

        /// 应用ID
        public let appid: UInt64

        /// 账号唯一标识
        public let uin: String

        /// 联盟id
        public let consortiumId: Int64

        /// 联盟名称
        public let consortiumName: String

        /// 网络ID
        public let clusterId: String

        /// 群组ID
        public let groupId: Int64

        /// 链ID
        public let chainId: String

        /// 1为盟主，0为非盟主
        public let roleType: UInt64

        /// 机构DID
        public let agencyDid: String

        /// 机构名称
        public let createOrg: String

        /// 端点
        public let endpoint: String

        /// 生成时间
        public let createTime: String

        /// 更新时间
        public let updateTime: String

        /// 群组名称
        public let groupName: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case appid = "Appid"
            case uin = "Uin"
            case consortiumId = "ConsortiumId"
            case consortiumName = "ConsortiumName"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case chainId = "ChainId"
            case roleType = "RoleType"
            case agencyDid = "AgencyDid"
            case createOrg = "CreateOrg"
            case endpoint = "Endpoint"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case groupName = "GroupName"
        }
    }

    /// 创建凭证入参的FunctionArg
    public struct FunctionArg: TCInputModel {
        /// CPT ID
        public let cptId: UInt64

        /// 签发者 did
        public let issuer: String

        /// 过期时间
        public let expirationDate: String

        /// 声明
        public let claimJson: String

        public init(cptId: UInt64, issuer: String, expirationDate: String, claimJson: String) {
            self.cptId = cptId
            self.issuer = issuer
            self.expirationDate = expirationDate
            self.claimJson = claimJson
        }

        enum CodingKeys: String, CodingKey {
            case cptId = "CptId"
            case issuer = "Issuer"
            case expirationDate = "ExpirationDate"
            case claimJson = "ClaimJson"
        }
    }

    /// 群组
    public struct Group: TCOutputModel {
        /// 群组ID
        public let groupId: UInt64

        /// 节点数量
        public let nodeCount: UInt64

        /// 所属机构节点数量
        public let nodeCountOfAgency: UInt64

        /// 群组描述
        public let description: String

        /// 参与角色，盟主或非盟主
        public let roleType: UInt64

        /// 链id
        public let chainId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case nodeCount = "NodeCount"
            case nodeCountOfAgency = "NodeCountOfAgency"
            case description = "Description"
            case roleType = "RoleType"
            case chainId = "ChainId"
        }
    }

    /// did详情
    public struct Identity: TCOutputModel {
        /// 账户标识符
        public let accountIdentifier: String

        /// 链ID
        public let chainID: String

        /// 完整tdid
        public let did: String

        /// 群组ID
        public let groupId: UInt64

        /// 群组名称
        public let groupName: String

        enum CodingKeys: String, CodingKey {
            case accountIdentifier = "AccountIdentifier"
            case chainID = "ChainID"
            case did = "Did"
            case groupId = "GroupId"
            case groupName = "GroupName"
        }
    }

    /// 标签
    public struct Label: TCOutputModel {
        /// 标签ID
        public let labelId: UInt64

        /// 标签名称
        public let labelName: String

        /// did数量
        public let didCount: Int64

        /// 创建者did
        public let did: String

        /// 网络ID
        public let clusterId: String

        /// 创建时间
        public let createTime: String

        /// 群组ID
        public let groupId: Int64

        enum CodingKeys: String, CodingKey {
            case labelId = "LabelId"
            case labelName = "LabelName"
            case didCount = "DidCount"
            case did = "Did"
            case clusterId = "ClusterId"
            case createTime = "CreateTime"
            case groupId = "GroupId"
        }
    }

    /// 策略管理
    public struct Policy: TCOutputModel {
        /// 披露策略索引
        public let id: UInt64

        /// 披露策略名称
        public let name: String

        /// 网络ID
        public let clusterId: String

        /// 群组ID
        public let groupId: UInt64

        /// 服务ID
        public let serviceId: UInt64

        /// 合约应用ID
        public let contractAppId: UInt64

        /// 披露策略ID
        public let policyId: UInt64

        /// 凭证模板ID
        public let cptId: UInt64

        /// 策略Json
        public let policyJson: String

        /// 生成时间
        public let createTime: String

        /// 更新时间
        public let updateTime: String

        /// 创建者DID
        public let creatorDid: String

        /// 应用名称
        public let appName: String

        /// 模板索引
        public let cptIndex: UInt64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case serviceId = "ServiceId"
            case contractAppId = "ContractAppId"
            case policyId = "PolicyId"
            case cptId = "CptId"
            case policyJson = "PolicyJson"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case creatorDid = "CreatorDid"
            case appName = "AppName"
            case cptIndex = "CptIndex"
        }
    }

    /// 验证凭证签名
    public struct Proof: TCInputModel {
        /// 创建时间
        public let created: Int64

        /// 创建着did
        public let creator: String

        /// salt值
        public let saltJson: String

        /// 签名
        public let signatureValue: String

        /// type类型
        public let type: String

        public init(created: Int64, creator: String, saltJson: String, signatureValue: String, type: String) {
            self.created = created
            self.creator = creator
            self.saltJson = saltJson
            self.signatureValue = signatureValue
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case created = "Created"
            case creator = "Creator"
            case saltJson = "SaltJson"
            case signatureValue = "SignatureValue"
            case type = "Type"
        }
    }

    /// CreateDidService、CheckDidDeploy出参
    public struct Task: TCOutputModel {
        /// 任务ID
        public let id: UInt64

        /// 应用ID
        public let appId: UInt64

        /// 网络ID
        public let clusterId: String

        /// 群组ID
        public let groupId: UInt64

        /// 服务ID
        public let serviceId: UInt64

        /// 0: 部署中，1:部署成功，其他失败
        public let status: UInt64

        /// 错误码
        public let errorCode: String

        /// 错误提示
        public let errorMsg: String

        /// 生成时间
        public let createTime: String

        /// 更新时间
        public let updateTime: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case appId = "AppId"
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case serviceId = "ServiceId"
            case status = "Status"
            case errorCode = "ErrorCode"
            case errorMsg = "ErrorMsg"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 创建凭证第二个
    public struct TransactionArg: TCInputModel {
        /// 凭证did
        public let invokerTDid: String

        public init(invokerTDid: String) {
            self.invokerTDid = invokerTDid
        }

        enum CodingKeys: String, CodingKey {
            case invokerTDid = "InvokerTDid"
        }
    }

    /// 趋势
    public struct Trend: TCOutputModel {
        /// 时间点
        public let time: String

        /// 数量
        public let count: Int64

        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case count = "Count"
        }
    }

    /// 验证凭证参数值
    public struct VerifyFunctionArg: TCInputModel {
        /// CPT ID
        public let cptId: UInt64

        /// issuer did
        public let issuer: String

        /// 过期时间
        public let expirationDate: Int64

        /// 声明
        public let claimJson: String

        /// 颁发时间
        public let issuanceDate: Int64

        /// context值
        public let context: String

        /// id值
        public let id: String

        /// 签名值
        public let proof: Proof

        /// type值
        public let type: [String]

        public init(cptId: UInt64, issuer: String, expirationDate: Int64, claimJson: String, issuanceDate: Int64, context: String, id: String, proof: Proof, type: [String]) {
            self.cptId = cptId
            self.issuer = issuer
            self.expirationDate = expirationDate
            self.claimJson = claimJson
            self.issuanceDate = issuanceDate
            self.context = context
            self.id = id
            self.proof = proof
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case cptId = "CptId"
            case issuer = "Issuer"
            case expirationDate = "ExpirationDate"
            case claimJson = "ClaimJson"
            case issuanceDate = "IssuanceDate"
            case context = "Context"
            case id = "Id"
            case proof = "Proof"
            case type = "Type"
        }
    }
}
