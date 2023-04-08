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

extension Tcss {
    /// ResetSecLogTopicConfig请求参数结构体
    public struct ResetSecLogTopicConfigRequest: TCRequestModel {
        /// 配置类型(ckafka/cls)
        public let configType: String

        /// 日志类型
        public let logType: String

        public init(configType: String, logType: String) {
            self.configType = configType
            self.logType = logType
        }

        enum CodingKeys: String, CodingKey {
            case configType = "ConfigType"
            case logType = "LogType"
        }
    }

    /// ResetSecLogTopicConfig返回参数结构体
    public struct ResetSecLogTopicConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置安全日志主题设置
    @inlinable @discardableResult
    public func resetSecLogTopicConfig(_ input: ResetSecLogTopicConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetSecLogTopicConfigResponse> {
        self.client.execute(action: "ResetSecLogTopicConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置安全日志主题设置
    @inlinable @discardableResult
    public func resetSecLogTopicConfig(_ input: ResetSecLogTopicConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetSecLogTopicConfigResponse {
        try await self.client.execute(action: "ResetSecLogTopicConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置安全日志主题设置
    @inlinable @discardableResult
    public func resetSecLogTopicConfig(configType: String, logType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetSecLogTopicConfigResponse> {
        self.resetSecLogTopicConfig(.init(configType: configType, logType: logType), region: region, logger: logger, on: eventLoop)
    }

    /// 重置安全日志主题设置
    @inlinable @discardableResult
    public func resetSecLogTopicConfig(configType: String, logType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetSecLogTopicConfigResponse {
        try await self.resetSecLogTopicConfig(.init(configType: configType, logType: logType), region: region, logger: logger, on: eventLoop)
    }
}
