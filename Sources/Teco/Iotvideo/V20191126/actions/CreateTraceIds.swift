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

extension Iotvideo {
    /// CreateTraceIds请求参数结构体
    public struct CreateTraceIdsRequest: TCRequestModel {
        /// 设备TID列表
        public let tids: [String]

        public init(tids: [String]) {
            self.tids = tids
        }

        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }

    /// CreateTraceIds返回参数结构体
    public struct CreateTraceIdsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 将设备加到白名单
    ///
    /// 本接口（CreateTraceIds）用于将设备加到日志跟踪白名单。
    @inlinable @discardableResult
    public func createTraceIds(_ input: CreateTraceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTraceIdsResponse> {
        self.client.execute(action: "CreateTraceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 将设备加到白名单
    ///
    /// 本接口（CreateTraceIds）用于将设备加到日志跟踪白名单。
    @inlinable @discardableResult
    public func createTraceIds(_ input: CreateTraceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTraceIdsResponse {
        try await self.client.execute(action: "CreateTraceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 将设备加到白名单
    ///
    /// 本接口（CreateTraceIds）用于将设备加到日志跟踪白名单。
    @inlinable @discardableResult
    public func createTraceIds(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTraceIdsResponse> {
        self.createTraceIds(CreateTraceIdsRequest(tids: tids), region: region, logger: logger, on: eventLoop)
    }

    /// 将设备加到白名单
    ///
    /// 本接口（CreateTraceIds）用于将设备加到日志跟踪白名单。
    @inlinable @discardableResult
    public func createTraceIds(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTraceIdsResponse {
        try await self.createTraceIds(CreateTraceIdsRequest(tids: tids), region: region, logger: logger, on: eventLoop)
    }
}
