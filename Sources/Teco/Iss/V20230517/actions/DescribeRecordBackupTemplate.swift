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
    public struct DescribeRecordBackupTemplateRequest: TCRequestModel {
        /// 模板ID（从查询录像上云模板列表接口ListRecordBackupTemplates中获取）
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// 查询录像上云模版返回数据
    public struct DescribeRecordBackupTemplateResponse: TCResponseModel {
        /// 模板ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateId: String?

        /// 模板名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templateName: String?

        /// 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeSections: [RecordTemplateTimeSections]?

        /// 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devTimeSections: [RecordTemplateTimeSections]?

        /// 上云倍速（支持1，2，4倍速）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scale: Int64?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createAt: String?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateAt: String?

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case templateName = "TemplateName"
            case timeSections = "TimeSections"
            case devTimeSections = "DevTimeSections"
            case scale = "Scale"
            case createAt = "CreateAt"
            case updateAt = "UpdateAt"
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