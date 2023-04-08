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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tione {
    /// DescribeCodeRepository请求参数结构体
    public struct DescribeCodeRepositoryRequest: TCRequestModel {
        /// 存储库名称
        public let codeRepositoryName: String

        public init(codeRepositoryName: String) {
            self.codeRepositoryName = codeRepositoryName
        }

        enum CodingKeys: String, CodingKey {
            case codeRepositoryName = "CodeRepositoryName"
        }
    }

    /// DescribeCodeRepository返回参数结构体
    public struct DescribeCodeRepositoryResponse: TCResponseModel {
        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTime: Date

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var lastModifiedTime: Date

        /// 存储库名称
        public let codeRepositoryName: String

        /// Git存储配置
        public let gitConfig: GitConfig

        /// 是否有Git凭证
        public let noSecret: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case lastModifiedTime = "LastModifiedTime"
            case codeRepositoryName = "CodeRepositoryName"
            case gitConfig = "GitConfig"
            case noSecret = "NoSecret"
            case requestId = "RequestId"
        }
    }

    /// 查询存储库详情
    @inlinable
    public func describeCodeRepository(_ input: DescribeCodeRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeRepositoryResponse> {
        self.client.execute(action: "DescribeCodeRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询存储库详情
    @inlinable
    public func describeCodeRepository(_ input: DescribeCodeRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeRepositoryResponse {
        try await self.client.execute(action: "DescribeCodeRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询存储库详情
    @inlinable
    public func describeCodeRepository(codeRepositoryName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeRepositoryResponse> {
        self.describeCodeRepository(.init(codeRepositoryName: codeRepositoryName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询存储库详情
    @inlinable
    public func describeCodeRepository(codeRepositoryName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeRepositoryResponse {
        try await self.describeCodeRepository(.init(codeRepositoryName: codeRepositoryName), region: region, logger: logger, on: eventLoop)
    }
}
