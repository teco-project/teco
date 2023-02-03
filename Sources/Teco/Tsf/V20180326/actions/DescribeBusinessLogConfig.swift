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

extension Tsf {
    /// DescribeBusinessLogConfig请求参数结构体
    public struct DescribeBusinessLogConfigRequest: TCRequestModel {
        /// 配置项ID
        public let configId: String

        public init(configId: String) {
            self.configId = configId
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
        }
    }

    /// DescribeBusinessLogConfig返回参数结构体
    public struct DescribeBusinessLogConfigResponse: TCResponseModel {
        /// 日志配置项
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: BusinessLogConfig?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询业务日志配置项信息
    @inlinable
    public func describeBusinessLogConfig(_ input: DescribeBusinessLogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBusinessLogConfigResponse> {
        self.client.execute(action: "DescribeBusinessLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询业务日志配置项信息
    @inlinable
    public func describeBusinessLogConfig(_ input: DescribeBusinessLogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBusinessLogConfigResponse {
        try await self.client.execute(action: "DescribeBusinessLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询业务日志配置项信息
    @inlinable
    public func describeBusinessLogConfig(configId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBusinessLogConfigResponse> {
        let input = DescribeBusinessLogConfigRequest(configId: configId)
        return self.client.execute(action: "DescribeBusinessLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询业务日志配置项信息
    @inlinable
    public func describeBusinessLogConfig(configId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBusinessLogConfigResponse {
        let input = DescribeBusinessLogConfigRequest(configId: configId)
        return try await self.client.execute(action: "DescribeBusinessLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
