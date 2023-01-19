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

extension Ecm {
    /// ModifyAddressesBandwidth请求参数结构体
    public struct ModifyAddressesBandwidthRequest: TCRequestModel {
        /// ECM 地域
        public let ecmRegion: String

        /// EIP唯一标识ID，形如'eip-xxxxxxx'
        public let addressIds: [String]

        /// 调整带宽目标值
        public let internetMaxBandwidthOut: UInt64

        public init(ecmRegion: String, addressIds: [String], internetMaxBandwidthOut: UInt64) {
            self.ecmRegion = ecmRegion
            self.addressIds = addressIds
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case addressIds = "AddressIds"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
        }
    }

    /// ModifyAddressesBandwidth返回参数结构体
    public struct ModifyAddressesBandwidthResponse: TCResponseModel {
        /// 异步任务TaskId。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 调整弹性公网IP带宽
    @inlinable
    public func modifyAddressesBandwidth(_ input: ModifyAddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAddressesBandwidthResponse> {
        self.client.execute(action: "ModifyAddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整弹性公网IP带宽
    @inlinable
    public func modifyAddressesBandwidth(_ input: ModifyAddressesBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressesBandwidthResponse {
        try await self.client.execute(action: "ModifyAddressesBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整弹性公网IP带宽
    @inlinable
    public func modifyAddressesBandwidth(ecmRegion: String, addressIds: [String], internetMaxBandwidthOut: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAddressesBandwidthResponse> {
        self.modifyAddressesBandwidth(ModifyAddressesBandwidthRequest(ecmRegion: ecmRegion, addressIds: addressIds, internetMaxBandwidthOut: internetMaxBandwidthOut), region: region, logger: logger, on: eventLoop)
    }

    /// 调整弹性公网IP带宽
    @inlinable
    public func modifyAddressesBandwidth(ecmRegion: String, addressIds: [String], internetMaxBandwidthOut: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressesBandwidthResponse {
        try await self.modifyAddressesBandwidth(ModifyAddressesBandwidthRequest(ecmRegion: ecmRegion, addressIds: addressIds, internetMaxBandwidthOut: internetMaxBandwidthOut), region: region, logger: logger, on: eventLoop)
    }
}
