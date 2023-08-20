//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DescribeRecordBackupTemplate请求参数结构体
    public struct DescribeRecordBackupTemplateRequest: TCRequest {
        /// 模板ID（从查询录像上云模板列表接口ListRecordBackupTemplates中获取）
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribeRecordBackupTemplate返回参数结构体
    public struct DescribeRecordBackupTemplateResponse: TCResponse {
        /// 返回数据
        public let data: DescribeRecordBackupTemplateData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询录像上云模板详情
    ///
    /// 用于查询录像上云模板详情。
    @inlinable
    public func describeRecordBackupTemplate(_ input: DescribeRecordBackupTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordBackupTemplateResponse> {
        self.client.execute(action: "DescribeRecordBackupTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录像上云模板详情
    ///
    /// 用于查询录像上云模板详情。
    @inlinable
    public func describeRecordBackupTemplate(_ input: DescribeRecordBackupTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordBackupTemplateResponse {
        try await self.client.execute(action: "DescribeRecordBackupTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录像上云模板详情
    ///
    /// 用于查询录像上云模板详情。
    @inlinable
    public func describeRecordBackupTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordBackupTemplateResponse> {
        self.describeRecordBackupTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询录像上云模板详情
    ///
    /// 用于查询录像上云模板详情。
    @inlinable
    public func describeRecordBackupTemplate(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordBackupTemplateResponse {
        try await self.describeRecordBackupTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
