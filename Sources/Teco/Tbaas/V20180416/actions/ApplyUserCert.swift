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

extension Tbaas {
    /// ApplyUserCert请求参数结构体
    public struct ApplyUserCertRequest: TCRequestModel {
        /// 模块名，固定字段：cert_mng
        public let module: String

        /// 操作名，固定字段：cert_apply_for_user
        public let operation: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 申请证书的组织名称，可以在组织管理列表中获取当前组织的名称
        public let groupName: String

        /// 用户证书标识，用于标识用户证书，要求由纯小写字母组成，长度小于10
        public let userIdentity: String

        /// 证书申请实体，使用腾讯云账号实名认证的名称
        public let applicant: String

        /// 证件号码。如果腾讯云账号对应的实名认证类型为企业认证，填入“0”；如果腾讯云账号对应的实名认证类型为个人认证，填入个人身份证号码
        public let identityNum: String

        /// csr p10证书文件。需要用户根据文档生成证书的CSR文件
        public let csrData: String

        /// 证书备注信息
        public let notes: String?

        public init(module: String, operation: String, clusterId: String, groupName: String, userIdentity: String, applicant: String, identityNum: String, csrData: String, notes: String? = nil) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupName = groupName
            self.userIdentity = userIdentity
            self.applicant = applicant
            self.identityNum = identityNum
            self.csrData = csrData
            self.notes = notes
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
            case userIdentity = "UserIdentity"
            case applicant = "Applicant"
            case identityNum = "IdentityNum"
            case csrData = "CsrData"
            case notes = "Notes"
        }
    }

    /// ApplyUserCert返回参数结构体
    public struct ApplyUserCertResponse: TCResponseModel {
        /// 证书ID
        public let certId: UInt64

        /// 证书DN
        public let certDn: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certId = "CertId"
            case certDn = "CertDn"
            case requestId = "RequestId"
        }
    }

    /// 申请用户证书
    @inlinable
    public func applyUserCert(_ input: ApplyUserCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyUserCertResponse> {
        self.client.execute(action: "ApplyUserCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请用户证书
    @inlinable
    public func applyUserCert(_ input: ApplyUserCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyUserCertResponse {
        try await self.client.execute(action: "ApplyUserCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请用户证书
    @inlinable
    public func applyUserCert(module: String, operation: String, clusterId: String, groupName: String, userIdentity: String, applicant: String, identityNum: String, csrData: String, notes: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyUserCertResponse> {
        let input = ApplyUserCertRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, userIdentity: userIdentity, applicant: applicant, identityNum: identityNum, csrData: csrData, notes: notes)
        return self.client.execute(action: "ApplyUserCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请用户证书
    @inlinable
    public func applyUserCert(module: String, operation: String, clusterId: String, groupName: String, userIdentity: String, applicant: String, identityNum: String, csrData: String, notes: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyUserCertResponse {
        let input = ApplyUserCertRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, userIdentity: userIdentity, applicant: applicant, identityNum: identityNum, csrData: csrData, notes: notes)
        return try await self.client.execute(action: "ApplyUserCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
