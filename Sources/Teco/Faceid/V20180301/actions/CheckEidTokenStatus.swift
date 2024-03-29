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

extension Faceid {
    /// CheckEidTokenStatus请求参数结构体
    public struct CheckEidTokenStatusRequest: TCRequest {
        /// E证通流程的唯一标识，调用GetEidToken接口时生成。
        public let eidToken: String

        public init(eidToken: String) {
            self.eidToken = eidToken
        }

        enum CodingKeys: String, CodingKey {
            case eidToken = "EidToken"
        }
    }

    /// CheckEidTokenStatus返回参数结构体
    public struct CheckEidTokenStatusResponse: TCResponse {
        /// 枚举：
        /// init：token未验证
        /// doing: 验证中
        /// finished: 验证完成
        /// timeout: token已超时
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 获取E证通Token状态
    ///
    /// 用于轮询E证通H5场景EidToken验证状态。
    @inlinable
    public func checkEidTokenStatus(_ input: CheckEidTokenStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckEidTokenStatusResponse> {
        self.client.execute(action: "CheckEidTokenStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取E证通Token状态
    ///
    /// 用于轮询E证通H5场景EidToken验证状态。
    @inlinable
    public func checkEidTokenStatus(_ input: CheckEidTokenStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckEidTokenStatusResponse {
        try await self.client.execute(action: "CheckEidTokenStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取E证通Token状态
    ///
    /// 用于轮询E证通H5场景EidToken验证状态。
    @inlinable
    public func checkEidTokenStatus(eidToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckEidTokenStatusResponse> {
        self.checkEidTokenStatus(.init(eidToken: eidToken), region: region, logger: logger, on: eventLoop)
    }

    /// 获取E证通Token状态
    ///
    /// 用于轮询E证通H5场景EidToken验证状态。
    @inlinable
    public func checkEidTokenStatus(eidToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckEidTokenStatusResponse {
        try await self.checkEidTokenStatus(.init(eidToken: eidToken), region: region, logger: logger, on: eventLoop)
    }
}
