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

extension Tem {
    /// ModifyConfigData请求参数结构体
    public struct ModifyConfigDataRequest: TCRequestModel {
        /// 环境 ID
        public let environmentId: String

        /// 配置名
        public let name: String

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 配置信息
        public let data: [Pair]?

        public init(environmentId: String, name: String, sourceChannel: Int64? = nil, data: [Pair]? = nil) {
            self.environmentId = environmentId
            self.name = name
            self.sourceChannel = sourceChannel
            self.data = data
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case name = "Name"
            case sourceChannel = "SourceChannel"
            case data = "Data"
        }
    }

    /// ModifyConfigData返回参数结构体
    public struct ModifyConfigDataResponse: TCResponseModel {
        /// 编辑是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 编辑配置
    @inlinable
    public func modifyConfigData(_ input: ModifyConfigDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConfigDataResponse> {
        self.client.execute(action: "ModifyConfigData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑配置
    @inlinable
    public func modifyConfigData(_ input: ModifyConfigDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConfigDataResponse {
        try await self.client.execute(action: "ModifyConfigData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑配置
    @inlinable
    public func modifyConfigData(environmentId: String, name: String, sourceChannel: Int64? = nil, data: [Pair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConfigDataResponse> {
        self.modifyConfigData(.init(environmentId: environmentId, name: name, sourceChannel: sourceChannel, data: data), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑配置
    @inlinable
    public func modifyConfigData(environmentId: String, name: String, sourceChannel: Int64? = nil, data: [Pair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConfigDataResponse {
        try await self.modifyConfigData(.init(environmentId: environmentId, name: name, sourceChannel: sourceChannel, data: data), region: region, logger: logger, on: eventLoop)
    }
}
