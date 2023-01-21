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

extension Bmvpc {
    /// AsyncRegisterIps请求参数结构体
    public struct AsyncRegisterIpsRequest: TCRequestModel {
        /// 私有网络的唯一ID。
        public let vpcId: String

        /// 子网唯一ID。
        public let subnetId: String

        /// 需要注册的IP列表。
        public let ips: [String]

        public init(vpcId: String, subnetId: String, ips: [String]) {
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.ips = ips
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case ips = "Ips"
        }
    }

    /// AsyncRegisterIps返回参数结构体
    public struct AsyncRegisterIpsResponse: TCResponseModel {
        /// 任务ID。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 批量注册虚拟IP
    ///
    /// 批量注册虚拟IP，异步接口。通过接口来查询任务进度。每次请求最多注册256个IP
    @inlinable
    public func asyncRegisterIps(_ input: AsyncRegisterIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AsyncRegisterIpsResponse> {
        self.client.execute(action: "AsyncRegisterIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量注册虚拟IP
    ///
    /// 批量注册虚拟IP，异步接口。通过接口来查询任务进度。每次请求最多注册256个IP
    @inlinable
    public func asyncRegisterIps(_ input: AsyncRegisterIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AsyncRegisterIpsResponse {
        try await self.client.execute(action: "AsyncRegisterIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量注册虚拟IP
    ///
    /// 批量注册虚拟IP，异步接口。通过接口来查询任务进度。每次请求最多注册256个IP
    @inlinable
    public func asyncRegisterIps(vpcId: String, subnetId: String, ips: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AsyncRegisterIpsResponse> {
        self.asyncRegisterIps(AsyncRegisterIpsRequest(vpcId: vpcId, subnetId: subnetId, ips: ips), region: region, logger: logger, on: eventLoop)
    }

    /// 批量注册虚拟IP
    ///
    /// 批量注册虚拟IP，异步接口。通过接口来查询任务进度。每次请求最多注册256个IP
    @inlinable
    public func asyncRegisterIps(vpcId: String, subnetId: String, ips: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AsyncRegisterIpsResponse {
        try await self.asyncRegisterIps(AsyncRegisterIpsRequest(vpcId: vpcId, subnetId: subnetId, ips: ips), region: region, logger: logger, on: eventLoop)
    }
}
