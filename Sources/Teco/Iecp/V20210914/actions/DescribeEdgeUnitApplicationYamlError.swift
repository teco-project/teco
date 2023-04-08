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

import TecoCore

extension Iecp {
    /// DescribeEdgeUnitApplicationYamlError请求参数结构体
    public struct DescribeEdgeUnitApplicationYamlErrorRequest: TCRequestModel {
        /// Yaml配置
        public let yaml: String

        public init(yaml: String) {
            self.yaml = yaml
        }

        enum CodingKeys: String, CodingKey {
            case yaml = "Yaml"
        }
    }

    /// DescribeEdgeUnitApplicationYamlError返回参数结构体
    public struct DescribeEdgeUnitApplicationYamlErrorResponse: TCResponseModel {
        /// 是否通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let checkPass: Bool?

        /// 错误类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errType: Int64?

        /// 错误信息
        public let errInfo: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case checkPass = "CheckPass"
            case errType = "ErrType"
            case errInfo = "ErrInfo"
            case requestId = "RequestId"
        }
    }

    /// 检查单元应用的Yaml配置
    @inlinable
    public func describeEdgeUnitApplicationYamlError(_ input: DescribeEdgeUnitApplicationYamlErrorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitApplicationYamlErrorResponse> {
        self.client.execute(action: "DescribeEdgeUnitApplicationYamlError", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检查单元应用的Yaml配置
    @inlinable
    public func describeEdgeUnitApplicationYamlError(_ input: DescribeEdgeUnitApplicationYamlErrorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationYamlErrorResponse {
        try await self.client.execute(action: "DescribeEdgeUnitApplicationYamlError", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检查单元应用的Yaml配置
    @inlinable
    public func describeEdgeUnitApplicationYamlError(yaml: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitApplicationYamlErrorResponse> {
        self.describeEdgeUnitApplicationYamlError(.init(yaml: yaml), region: region, logger: logger, on: eventLoop)
    }

    /// 检查单元应用的Yaml配置
    @inlinable
    public func describeEdgeUnitApplicationYamlError(yaml: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationYamlErrorResponse {
        try await self.describeEdgeUnitApplicationYamlError(.init(yaml: yaml), region: region, logger: logger, on: eventLoop)
    }
}
