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

extension Tcb {
    /// CheckTcbService请求参数结构体
    public struct CheckTcbServiceRequest: TCRequestModel {
        public init() {
        }
    }

    /// CheckTcbService返回参数结构体
    public struct CheckTcbServiceResponse: TCResponseModel {
        /// true表示已开通
        public let initialized: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case initialized = "Initialized"
            case requestId = "RequestId"
        }
    }

    /// 检查是否开通Tcb服务
    @inlinable
    public func checkTcbService(_ input: CheckTcbServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckTcbServiceResponse> {
        self.client.execute(action: "CheckTcbService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检查是否开通Tcb服务
    @inlinable
    public func checkTcbService(_ input: CheckTcbServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckTcbServiceResponse {
        try await self.client.execute(action: "CheckTcbService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检查是否开通Tcb服务
    @inlinable
    public func checkTcbService(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckTcbServiceResponse> {
        self.checkTcbService(CheckTcbServiceRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 检查是否开通Tcb服务
    @inlinable
    public func checkTcbService(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckTcbServiceResponse {
        try await self.checkTcbService(CheckTcbServiceRequest(), region: region, logger: logger, on: eventLoop)
    }
}
