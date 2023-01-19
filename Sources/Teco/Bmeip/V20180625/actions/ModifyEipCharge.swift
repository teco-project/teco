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

extension Bmeip {
    /// ModifyEipCharge请求参数结构体
    public struct ModifyEipChargeRequest: TCRequestModel {
        /// EIP计费方式，flow-流量计费；bandwidth-带宽计费
        public let payMode: String

        /// Eip实例ID列表
        public let eipIds: [String]?

        /// 带宽设定值（只在带宽计费时生效）
        public let bandwidth: UInt64?

        public init(payMode: String, eipIds: [String]? = nil, bandwidth: UInt64? = nil) {
            self.payMode = payMode
            self.eipIds = eipIds
            self.bandwidth = bandwidth
        }

        enum CodingKeys: String, CodingKey {
            case payMode = "PayMode"
            case eipIds = "EipIds"
            case bandwidth = "Bandwidth"
        }
    }

    /// ModifyEipCharge返回参数结构体
    public struct ModifyEipChargeResponse: TCResponseModel {
        /// 修改计费模式的异步任务ID，可以通过查询EIP任务状态查询任务状态
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 黑石EIP修改计费方式
    @inlinable
    public func modifyEipCharge(_ input: ModifyEipChargeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEipChargeResponse> {
        self.client.execute(action: "ModifyEipCharge", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 黑石EIP修改计费方式
    @inlinable
    public func modifyEipCharge(_ input: ModifyEipChargeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEipChargeResponse {
        try await self.client.execute(action: "ModifyEipCharge", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 黑石EIP修改计费方式
    @inlinable
    public func modifyEipCharge(payMode: String, eipIds: [String]? = nil, bandwidth: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEipChargeResponse> {
        self.modifyEipCharge(ModifyEipChargeRequest(payMode: payMode, eipIds: eipIds, bandwidth: bandwidth), region: region, logger: logger, on: eventLoop)
    }

    /// 黑石EIP修改计费方式
    @inlinable
    public func modifyEipCharge(payMode: String, eipIds: [String]? = nil, bandwidth: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEipChargeResponse {
        try await self.modifyEipCharge(ModifyEipChargeRequest(payMode: payMode, eipIds: eipIds, bandwidth: bandwidth), region: region, logger: logger, on: eventLoop)
    }
}
