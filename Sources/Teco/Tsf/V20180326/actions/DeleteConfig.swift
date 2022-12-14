//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tsf {
    /// DeleteConfig请求参数结构体
    public struct DeleteConfigRequest: TCRequestModel {
        /// 配置项ID
        public let configId: String

        public init(configId: String) {
            self.configId = configId
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
        }
    }

    /// DeleteConfig返回参数结构体
    public struct DeleteConfigResponse: TCResponseModel {
        /// true：删除成功；false：删除失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除配置项
    @inlinable
    public func deleteConfig(_ input: DeleteConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteConfigResponse > {
        self.client.execute(action: "DeleteConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除配置项
    @inlinable
    public func deleteConfig(_ input: DeleteConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConfigResponse {
        try await self.client.execute(action: "DeleteConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除配置项
    @inlinable
    public func deleteConfig(configId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteConfigResponse > {
        self.deleteConfig(DeleteConfigRequest(configId: configId), logger: logger, on: eventLoop)
    }

    /// 删除配置项
    @inlinable
    public func deleteConfig(configId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConfigResponse {
        try await self.deleteConfig(DeleteConfigRequest(configId: configId), logger: logger, on: eventLoop)
    }
}
