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
    /// DescribeApplicationYaml请求参数结构体
    public struct DescribeApplicationYamlRequest: TCRequestModel {
        /// 应用模板ID
        public let applicationId: UInt64

        public init(applicationId: UInt64) {
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }

    /// DescribeApplicationYaml返回参数结构体
    public struct DescribeApplicationYamlResponse: TCResponseModel {
        /// base64 后的yaml
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let yaml: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case yaml = "Yaml"
            case requestId = "RequestId"
        }
    }

    /// 查询应用模板Yaml
    @inlinable
    public func describeApplicationYaml(_ input: DescribeApplicationYamlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationYamlResponse> {
        self.client.execute(action: "DescribeApplicationYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用模板Yaml
    @inlinable
    public func describeApplicationYaml(_ input: DescribeApplicationYamlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationYamlResponse {
        try await self.client.execute(action: "DescribeApplicationYaml", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用模板Yaml
    @inlinable
    public func describeApplicationYaml(applicationId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationYamlResponse> {
        self.describeApplicationYaml(DescribeApplicationYamlRequest(applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用模板Yaml
    @inlinable
    public func describeApplicationYaml(applicationId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationYamlResponse {
        try await self.describeApplicationYaml(DescribeApplicationYamlRequest(applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }
}
