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

extension Iecp {
    /// GetMarketComponent请求参数结构体
    public struct GetMarketComponentRequest: TCRequestModel {
        /// 组件ID
        public let id: Int64

        public init(id: Int64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "ID"
        }
    }

    /// GetMarketComponent返回参数结构体
    public struct GetMarketComponentResponse: TCResponseModel {
        /// 组件ID
        public let id: Int64

        /// 组件名称
        public let appName: String

        /// 发行组织
        public let author: String

        /// 发布时间
        public let releaseTime: String

        /// 组件简介
        public let outline: String

        /// 详细介绍链接
        public let detail: String

        /// 图标连接
        public let icon: String

        /// 组件版本
        public let version: String

        /// 组件可视化配置
        public let workloadVisualConfig: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case appName = "AppName"
            case author = "Author"
            case releaseTime = "ReleaseTime"
            case outline = "Outline"
            case detail = "Detail"
            case icon = "Icon"
            case version = "Version"
            case workloadVisualConfig = "WorkloadVisualConfig"
            case requestId = "RequestId"
        }
    }

    /// 获取组件市场的组件信息
    @inlinable
    public func getMarketComponent(_ input: GetMarketComponentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMarketComponentResponse> {
        self.client.execute(action: "GetMarketComponent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组件市场的组件信息
    @inlinable
    public func getMarketComponent(_ input: GetMarketComponentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMarketComponentResponse {
        try await self.client.execute(action: "GetMarketComponent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组件市场的组件信息
    @inlinable
    public func getMarketComponent(id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMarketComponentResponse> {
        self.getMarketComponent(GetMarketComponentRequest(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组件市场的组件信息
    @inlinable
    public func getMarketComponent(id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMarketComponentResponse {
        try await self.getMarketComponent(GetMarketComponentRequest(id: id), region: region, logger: logger, on: eventLoop)
    }
}
