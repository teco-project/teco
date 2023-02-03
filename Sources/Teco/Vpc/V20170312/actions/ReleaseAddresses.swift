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
    /// ReleaseAddresses请求参数结构体
    public struct ReleaseAddressesRequest: TCRequestModel {
        /// 标识 EIP 的唯一 ID 列表。EIP 唯一 ID 形如：`eip-11112222`。
        public let addressIds: [String]

        public init(addressIds: [String]) {
            self.addressIds = addressIds
        }

        enum CodingKeys: String, CodingKey {
            case addressIds = "AddressIds"
        }
    }

    /// ReleaseAddresses返回参数结构体
    public struct ReleaseAddressesResponse: TCResponseModel {
        /// 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
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
    /// 本接口 (ReleaseAddresses) 用于释放一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
    /// * 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
    /// * 只有状态为 UNBIND 的 EIP 才能进行释放操作。
    @inlinable
    public func releaseAddresses(_ input: ReleaseAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseAddressesResponse> {
        self.client.execute(action: "ReleaseAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放弹性公网IP
    ///
    /// 本接口 (ReleaseAddresses) 用于释放一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
    /// * 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
    /// * 只有状态为 UNBIND 的 EIP 才能进行释放操作。
    @inlinable
    public func releaseAddresses(_ input: ReleaseAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseAddressesResponse {
        try await self.client.execute(action: "ReleaseAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 释放弹性公网IP
    ///
    /// 本接口 (ReleaseAddresses) 用于释放一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
    /// * 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
    /// * 只有状态为 UNBIND 的 EIP 才能进行释放操作。
    @inlinable
    public func releaseAddresses(addressIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseAddressesResponse> {
        let input = ReleaseAddressesRequest(addressIds: addressIds)
        return self.client.execute(action: "ReleaseAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放弹性公网IP
    ///
    /// 本接口 (ReleaseAddresses) 用于释放一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
    /// * 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
    /// * 只有状态为 UNBIND 的 EIP 才能进行释放操作。
    @inlinable
    public func releaseAddresses(addressIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseAddressesResponse {
        let input = ReleaseAddressesRequest(addressIds: addressIds)
        return try await self.client.execute(action: "ReleaseAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
