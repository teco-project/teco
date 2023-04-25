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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Monitor {
    /// DescribePrometheusTempSync请求参数结构体
    public struct DescribePrometheusTempSyncRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribePrometheusTempSync返回参数结构体
    public struct DescribePrometheusTempSyncResponse: TCResponseModel {
        /// 同步目标详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let targets: [PrometheusTemplateSyncTarget]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case targets = "Targets"
            case requestId = "RequestId"
        }
    }

    /// 获取模板关联实例信息
    ///
    /// 获取模板关联实例信息，针对V2版本实例
    @inlinable
    public func describePrometheusTempSync(_ input: DescribePrometheusTempSyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusTempSyncResponse> {
        self.client.execute(action: "DescribePrometheusTempSync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取模板关联实例信息
    ///
    /// 获取模板关联实例信息，针对V2版本实例
    @inlinable
    public func describePrometheusTempSync(_ input: DescribePrometheusTempSyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTempSyncResponse {
        try await self.client.execute(action: "DescribePrometheusTempSync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取模板关联实例信息
    ///
    /// 获取模板关联实例信息，针对V2版本实例
    @inlinable
    public func describePrometheusTempSync(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusTempSyncResponse> {
        self.describePrometheusTempSync(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取模板关联实例信息
    ///
    /// 获取模板关联实例信息，针对V2版本实例
    @inlinable
    public func describePrometheusTempSync(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTempSyncResponse {
        try await self.describePrometheusTempSync(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
