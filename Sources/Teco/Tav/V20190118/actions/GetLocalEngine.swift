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

extension Tav {
    /// GetLocalEngine请求参数结构体
    public struct GetLocalEngineRequest: TCRequestModel {
        /// 购买服务后获得的授权信息，用于保证请求有效性
        public let key: String

        public init(key: String) {
            self.key = key
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
        }
    }

    /// GetLocalEngine返回参数结构体
    public struct GetLocalEngineResponse: TCResponseModel {
        /// 接口调用状态，成功返回200，失败返回400
        public let status: UInt64

        /// 接口调用描述信息，成功返回"scan success"，失败返回"scan error"
        public let info: String

        /// 本地引擎下载地址
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case info = "Info"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 本地引擎下载地址获取
    ///
    /// 获取TAV本地引擎
    @inlinable
    public func getLocalEngine(_ input: GetLocalEngineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLocalEngineResponse> {
        self.client.execute(action: "GetLocalEngine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 本地引擎下载地址获取
    ///
    /// 获取TAV本地引擎
    @inlinable
    public func getLocalEngine(_ input: GetLocalEngineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLocalEngineResponse {
        try await self.client.execute(action: "GetLocalEngine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 本地引擎下载地址获取
    ///
    /// 获取TAV本地引擎
    @inlinable
    public func getLocalEngine(key: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLocalEngineResponse> {
        self.getLocalEngine(GetLocalEngineRequest(key: key), region: region, logger: logger, on: eventLoop)
    }

    /// 本地引擎下载地址获取
    ///
    /// 获取TAV本地引擎
    @inlinable
    public func getLocalEngine(key: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLocalEngineResponse {
        try await self.getLocalEngine(GetLocalEngineRequest(key: key), region: region, logger: logger, on: eventLoop)
    }
}
