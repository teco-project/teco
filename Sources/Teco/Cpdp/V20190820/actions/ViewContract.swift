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

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// ViewContract请求参数结构体
    public struct ViewContractRequest: TCRequest {
        /// 收单系统分配的开放ID
        public let openId: String

        /// 收单系统分配的密钥
        public let openKey: String

        /// 外部合同主键编号（ContractId或OutContractId必须传一个）
        public let outContractId: String?

        /// 合同主键（ContractId或OutContractId必须传一个）
        public let contractId: String?

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, outContractId: String? = nil, contractId: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.outContractId = outContractId
            self.contractId = contractId
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case outContractId = "OutContractId"
            case contractId = "ContractId"
            case profile = "Profile"
        }
    }

    /// ViewContract返回参数结构体
    public struct ViewContractResponse: TCResponse {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 业务系统返回码
        public let errCode: String

        /// 合同明细响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ViewContractResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-查询合同明细接口
    @inlinable
    public func viewContract(_ input: ViewContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ViewContractResponse> {
        self.client.execute(action: "ViewContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-查询合同明细接口
    @inlinable
    public func viewContract(_ input: ViewContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ViewContractResponse {
        try await self.client.execute(action: "ViewContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-查询合同明细接口
    @inlinable
    public func viewContract(openId: String, openKey: String, outContractId: String? = nil, contractId: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ViewContractResponse> {
        self.viewContract(.init(openId: openId, openKey: openKey, outContractId: outContractId, contractId: contractId, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-查询合同明细接口
    @inlinable
    public func viewContract(openId: String, openKey: String, outContractId: String? = nil, contractId: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ViewContractResponse {
        try await self.viewContract(.init(openId: openId, openKey: openKey, outContractId: outContractId, contractId: contractId, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
