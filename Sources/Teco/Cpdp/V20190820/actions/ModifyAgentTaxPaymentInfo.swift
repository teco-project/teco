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

extension Cpdp {
    /// ModifyAgentTaxPaymentInfo请求参数结构体
    public struct ModifyAgentTaxPaymentInfoRequest: TCRequestModel {
        /// 批次号
        public let batchNum: Int64

        /// 新源电子凭证地址
        public let rawElectronicCertUrl: String

        /// 新的文件名
        public let fileName: String?

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(batchNum: Int64, rawElectronicCertUrl: String, fileName: String? = nil, profile: String? = nil) {
            self.batchNum = batchNum
            self.rawElectronicCertUrl = rawElectronicCertUrl
            self.fileName = fileName
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case batchNum = "BatchNum"
            case rawElectronicCertUrl = "RawElectronicCertUrl"
            case fileName = "FileName"
            case profile = "Profile"
        }
    }

    /// ModifyAgentTaxPaymentInfo返回参数结构体
    public struct ModifyAgentTaxPaymentInfoResponse: TCResponseModel {
        /// 代理商完税证明批次信息
        public let agentTaxPaymentBatch: AgentTaxPaymentBatch

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agentTaxPaymentBatch = "AgentTaxPaymentBatch"
            case requestId = "RequestId"
        }
    }

    /// 直播平台-修改代理商完税信息
    @inlinable
    public func modifyAgentTaxPaymentInfo(_ input: ModifyAgentTaxPaymentInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAgentTaxPaymentInfoResponse> {
        self.client.execute(action: "ModifyAgentTaxPaymentInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播平台-修改代理商完税信息
    @inlinable
    public func modifyAgentTaxPaymentInfo(_ input: ModifyAgentTaxPaymentInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAgentTaxPaymentInfoResponse {
        try await self.client.execute(action: "ModifyAgentTaxPaymentInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播平台-修改代理商完税信息
    @inlinable
    public func modifyAgentTaxPaymentInfo(batchNum: Int64, rawElectronicCertUrl: String, fileName: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAgentTaxPaymentInfoResponse> {
        self.modifyAgentTaxPaymentInfo(ModifyAgentTaxPaymentInfoRequest(batchNum: batchNum, rawElectronicCertUrl: rawElectronicCertUrl, fileName: fileName, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 直播平台-修改代理商完税信息
    @inlinable
    public func modifyAgentTaxPaymentInfo(batchNum: Int64, rawElectronicCertUrl: String, fileName: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAgentTaxPaymentInfoResponse {
        try await self.modifyAgentTaxPaymentInfo(ModifyAgentTaxPaymentInfoRequest(batchNum: batchNum, rawElectronicCertUrl: rawElectronicCertUrl, fileName: fileName, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
