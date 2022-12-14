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

extension Iecp {
    /// DescribeEdgeUnitApplicationYaml请求参数结构体
    public struct DescribeEdgeUnitApplicationYamlRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitId: UInt64

        /// 应用ID
        public let applicationId: UInt64

        public init(edgeUnitId: UInt64, applicationId: UInt64) {
            self.edgeUnitId = edgeUnitId
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case applicationId = "ApplicationId"
        }
    }

    /// DescribeEdgeUnitApplicationYaml返回参数结构体
    public struct DescribeEdgeUnitApplicationYamlResponse: TCResponseModel {
        /// Yaml配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let yaml: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case yaml = "Yaml"
            case requestId = "RequestId"
        }
    }

    /// 获取应用的Yaml配置
    @inlinable
    public func describeEdgeUnitApplicationYaml(_ input: DescribeEdgeUnitApplicationYamlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgeUnitApplicationYamlResponse > {
        self.client.execute(action: "DescribeEdgeUnitApplicationYaml", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用的Yaml配置
    @inlinable
    public func describeEdgeUnitApplicationYaml(_ input: DescribeEdgeUnitApplicationYamlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationYamlResponse {
        try await self.client.execute(action: "DescribeEdgeUnitApplicationYaml", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用的Yaml配置
    @inlinable
    public func describeEdgeUnitApplicationYaml(edgeUnitId: UInt64, applicationId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgeUnitApplicationYamlResponse > {
        self.describeEdgeUnitApplicationYaml(DescribeEdgeUnitApplicationYamlRequest(edgeUnitId: edgeUnitId, applicationId: applicationId), logger: logger, on: eventLoop)
    }

    /// 获取应用的Yaml配置
    @inlinable
    public func describeEdgeUnitApplicationYaml(edgeUnitId: UInt64, applicationId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationYamlResponse {
        try await self.describeEdgeUnitApplicationYaml(DescribeEdgeUnitApplicationYamlRequest(edgeUnitId: edgeUnitId, applicationId: applicationId), logger: logger, on: eventLoop)
    }
}
