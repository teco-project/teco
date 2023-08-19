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

extension Anicloud {
    /// CheckAppidExist请求参数结构体
    public struct CheckAppidExistRequest: TCRequest {
        /// 业务的appid
        public let sdkAppid: String

        /// sub product code
        public let type: String

        public init(sdkAppid: String, type: String) {
            self.sdkAppid = sdkAppid
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppid = "SDKAppid"
            case type = "Type"
        }
    }

    /// CheckAppidExist返回参数结构体
    public struct CheckAppidExistResponse: TCResponse {
        /// appid是否存在
        public let exist: Bool

        /// 请求是否成功
        public let hasError: Bool

        /// 出错消息
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case exist = "Exist"
            case hasError = "HasError"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 查看appid是否存在
    @inlinable
    public func checkAppidExist(_ input: CheckAppidExistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckAppidExistResponse> {
        self.client.execute(action: "CheckAppidExist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看appid是否存在
    @inlinable
    public func checkAppidExist(_ input: CheckAppidExistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckAppidExistResponse {
        try await self.client.execute(action: "CheckAppidExist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看appid是否存在
    @inlinable
    public func checkAppidExist(sdkAppid: String, type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckAppidExistResponse> {
        self.checkAppidExist(.init(sdkAppid: sdkAppid, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 查看appid是否存在
    @inlinable
    public func checkAppidExist(sdkAppid: String, type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckAppidExistResponse {
        try await self.checkAppidExist(.init(sdkAppid: sdkAppid, type: type), region: region, logger: logger, on: eventLoop)
    }
}
