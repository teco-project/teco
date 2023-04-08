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

extension Vpc {
    /// AdjustPublicAddress请求参数结构体
    public struct AdjustPublicAddressRequest: TCRequestModel {
        /// 标识CVM实例的唯一 ID。CVM 唯一 ID 形如：`ins-11112222`。
        public let instanceId: String?

        /// 标识EIP实例的唯一 ID。EIP 唯一 ID 形如：`eip-11112222`。
        public let addressId: String?

        public init(instanceId: String? = nil, addressId: String? = nil) {
            self.instanceId = instanceId
            self.addressId = addressId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case addressId = "AddressId"
        }
    }

    /// AdjustPublicAddress返回参数结构体
    public struct AdjustPublicAddressResponse: TCResponseModel {
        /// 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 更换公网IP
    ///
    /// 本接口 (AdjustPublicAddress) 用于更换IP地址，支持更换CVM实例的普通公网IP和包月带宽的EIP。
    @inlinable
    public func adjustPublicAddress(_ input: AdjustPublicAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AdjustPublicAddressResponse> {
        self.client.execute(action: "AdjustPublicAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更换公网IP
    ///
    /// 本接口 (AdjustPublicAddress) 用于更换IP地址，支持更换CVM实例的普通公网IP和包月带宽的EIP。
    @inlinable
    public func adjustPublicAddress(_ input: AdjustPublicAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AdjustPublicAddressResponse {
        try await self.client.execute(action: "AdjustPublicAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更换公网IP
    ///
    /// 本接口 (AdjustPublicAddress) 用于更换IP地址，支持更换CVM实例的普通公网IP和包月带宽的EIP。
    @inlinable
    public func adjustPublicAddress(instanceId: String? = nil, addressId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AdjustPublicAddressResponse> {
        self.adjustPublicAddress(.init(instanceId: instanceId, addressId: addressId), region: region, logger: logger, on: eventLoop)
    }

    /// 更换公网IP
    ///
    /// 本接口 (AdjustPublicAddress) 用于更换IP地址，支持更换CVM实例的普通公网IP和包月带宽的EIP。
    @inlinable
    public func adjustPublicAddress(instanceId: String? = nil, addressId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AdjustPublicAddressResponse {
        try await self.adjustPublicAddress(.init(instanceId: instanceId, addressId: addressId), region: region, logger: logger, on: eventLoop)
    }
}
