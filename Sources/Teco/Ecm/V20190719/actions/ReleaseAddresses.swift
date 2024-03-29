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

extension Ecm {
    /// ReleaseAddresses请求参数结构体
    public struct ReleaseAddressesRequest: TCRequest {
        /// ECM 地域
        public let ecmRegion: String

        /// 标识 EIP 的唯一 ID 列表。
        public let addressIds: [String]

        public init(ecmRegion: String, addressIds: [String]) {
            self.ecmRegion = ecmRegion
            self.addressIds = addressIds
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case addressIds = "AddressIds"
        }
    }

    /// ReleaseAddresses返回参数结构体
    public struct ReleaseAddressesResponse: TCResponse {
        /// 异步任务TaskId。可以使用DescribeTaskResult接口查询任务状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 释放弹性公网IP
    ///
    /// 释放一个或多个弹性公网IP（简称 EIP）。
    /// 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
    /// 只有状态为 UNBIND 的 EIP 才能进行释放操作。
    @inlinable
    public func releaseAddresses(_ input: ReleaseAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseAddressesResponse> {
        self.client.execute(action: "ReleaseAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放弹性公网IP
    ///
    /// 释放一个或多个弹性公网IP（简称 EIP）。
    /// 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
    /// 只有状态为 UNBIND 的 EIP 才能进行释放操作。
    @inlinable
    public func releaseAddresses(_ input: ReleaseAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseAddressesResponse {
        try await self.client.execute(action: "ReleaseAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 释放弹性公网IP
    ///
    /// 释放一个或多个弹性公网IP（简称 EIP）。
    /// 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
    /// 只有状态为 UNBIND 的 EIP 才能进行释放操作。
    @inlinable
    public func releaseAddresses(ecmRegion: String, addressIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseAddressesResponse> {
        self.releaseAddresses(.init(ecmRegion: ecmRegion, addressIds: addressIds), region: region, logger: logger, on: eventLoop)
    }

    /// 释放弹性公网IP
    ///
    /// 释放一个或多个弹性公网IP（简称 EIP）。
    /// 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
    /// 只有状态为 UNBIND 的 EIP 才能进行释放操作。
    @inlinable
    public func releaseAddresses(ecmRegion: String, addressIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseAddressesResponse {
        try await self.releaseAddresses(.init(ecmRegion: ecmRegion, addressIds: addressIds), region: region, logger: logger, on: eventLoop)
    }
}
