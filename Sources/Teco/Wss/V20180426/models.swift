//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Wss {
    /// 获取证书列表（SSLCertificate）返回参数键为 CertificateSet 的内容。
    public struct SSLCertificate: TCOutputModel {
        /// 所属账户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ownerUin: String?
        
        /// 项目ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: String?
        
        /// 证书来源：trustasia = 亚洲诚信， upload = 用户上传
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let from: String?
        
        /// 证书类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?
        
        /// 证书类型（目前支持：CA = 客户端证书，SVR = 服务器证书）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certType: String?
        
        /// 证书办法者名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productZhName: String?
        
        /// 主域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domain: String?
        
        /// 别名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alias: String?
        
        /// 状态值 0：审核中，1：已通过，2：审核失败，3：已过期，4：已添加云解析记录，5：OV/EV 证书，待提交资料，6：订单取消中，7：已取消，8：已提交资料， 待上传确认函
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?
        
        /// 漏洞扫描状态：INACTIVE = 未开启，ACTIVE = 已开启
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulnerabilityStatus: String?
        
        /// 状态信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusMsg: String?
        
        /// 验证类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifyType: String?
        
        /// 证书生效时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certBeginTime: Date?
        
        /// 证书过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certEndTime: Date?
        
        /// 证书过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let validityPeriod: String?
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let insertTime: Date?
        
        /// 项目信息，ProjectId：项目ID，OwnerUin：项目所属的 uin（默认项目为0），Name：项目名称，CreatorUin：创建项目的 uin，CreateTime：项目创建时间，Info：项目说明
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectInfo: SSLProjectInfo
        
        /// 证书ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: String?
        
        /// 证书包含的多个域名（包含主域名）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subjectAltName: [String]?
        
        /// 证书类型名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let typeName: String?
        
        /// 状态名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusName: String?
        
        /// 是否为 VIP 客户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isVip: Bool?
        
        /// 是否我 DV 版证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isDv: Bool?
        
        /// 是否为泛域名证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isWildcard: Bool?
        
        /// 是否启用了漏洞扫描功能
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isVulnerability: Bool?
        
        /// 证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cert: String?
        
        enum CodingKeys: String, CodingKey {
            case ownerUin = "OwnerUin"
            case projectId = "ProjectId"
            case from = "From"
            case type = "Type"
            case certType = "CertType"
            case productZhName = "ProductZhName"
            case domain = "Domain"
            case alias = "Alias"
            case status = "Status"
            case vulnerabilityStatus = "VulnerabilityStatus"
            case statusMsg = "StatusMsg"
            case verifyType = "VerifyType"
            case certBeginTime = "CertBeginTime"
            case certEndTime = "CertEndTime"
            case validityPeriod = "ValidityPeriod"
            case insertTime = "InsertTime"
            case projectInfo = "ProjectInfo"
            case id = "Id"
            case subjectAltName = "SubjectAltName"
            case typeName = "TypeName"
            case statusName = "StatusName"
            case isVip = "IsVip"
            case isDv = "IsDv"
            case isWildcard = "IsWildcard"
            case isVulnerability = "IsVulnerability"
            case cert = "Cert"
        }
    }
    
    /// 获取证书列表接口（SSLProjectInfo）出参键为CertificateSet下的元素ProjectIno详情
    public struct SSLProjectInfo: TCOutputModel {
        /// 项目ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: String?
        
        /// 项目所属的 uin（默认项目为0）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ownerUin: Int64?
        
        /// 项目名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// 创建项目的 uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatorUin: Int64?
        
        /// 项目创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?
        
        /// 项目说明
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let info: String?
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case ownerUin = "OwnerUin"
            case name = "Name"
            case creatorUin = "CreatorUin"
            case createTime = "CreateTime"
            case info = "Info"
        }
    }
}