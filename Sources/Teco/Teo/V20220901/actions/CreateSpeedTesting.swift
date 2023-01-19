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

extension Teo {
    /// CreateSpeedTesting请求参数结构体
    public struct CreateSpeedTestingRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 拨测子域名。
        public let host: String?

        public init(zoneId: String, host: String? = nil) {
            self.zoneId = zoneId
            self.host = host
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case host = "Host"
        }
    }

    /// CreateSpeedTesting返回参数结构体
    public struct CreateSpeedTestingResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建站点拨测任务
    ///
    /// 对用户指定的域名进行一次站点拨测
    @inlinable
    public func createSpeedTesting(_ input: CreateSpeedTestingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSpeedTestingResponse> {
        self.client.execute(action: "CreateSpeedTesting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建站点拨测任务
    ///
    /// 对用户指定的域名进行一次站点拨测
    @inlinable
    public func createSpeedTesting(_ input: CreateSpeedTestingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSpeedTestingResponse {
        try await self.client.execute(action: "CreateSpeedTesting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建站点拨测任务
    ///
    /// 对用户指定的域名进行一次站点拨测
    @inlinable
    public func createSpeedTesting(zoneId: String, host: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSpeedTestingResponse> {
        self.createSpeedTesting(CreateSpeedTestingRequest(zoneId: zoneId, host: host), region: region, logger: logger, on: eventLoop)
    }

    /// 创建站点拨测任务
    ///
    /// 对用户指定的域名进行一次站点拨测
    @inlinable
    public func createSpeedTesting(zoneId: String, host: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSpeedTestingResponse {
        try await self.createSpeedTesting(CreateSpeedTestingRequest(zoneId: zoneId, host: host), region: region, logger: logger, on: eventLoop)
    }
}
