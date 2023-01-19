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

extension Dc {
    /// ReleaseInternetAddress请求参数结构体
    public struct ReleaseInternetAddressRequest: TCRequestModel {
        /// 公网互联网地址ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// ReleaseInternetAddress返回参数结构体
    public struct ReleaseInternetAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 释放互联网地址
    ///
    /// 释放已申请的互联网地址
    @inlinable
    public func releaseInternetAddress(_ input: ReleaseInternetAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseInternetAddressResponse> {
        self.client.execute(action: "ReleaseInternetAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放互联网地址
    ///
    /// 释放已申请的互联网地址
    @inlinable
    public func releaseInternetAddress(_ input: ReleaseInternetAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseInternetAddressResponse {
        try await self.client.execute(action: "ReleaseInternetAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 释放互联网地址
    ///
    /// 释放已申请的互联网地址
    @inlinable
    public func releaseInternetAddress(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseInternetAddressResponse> {
        self.releaseInternetAddress(ReleaseInternetAddressRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 释放互联网地址
    ///
    /// 释放已申请的互联网地址
    @inlinable
    public func releaseInternetAddress(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseInternetAddressResponse {
        try await self.releaseInternetAddress(ReleaseInternetAddressRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
