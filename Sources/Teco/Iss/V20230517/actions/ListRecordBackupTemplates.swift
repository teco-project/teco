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
    /// ListRecordBackupTemplates请求参数结构体
    public struct ListRecordBackupTemplatesRequest: TCRequestModel {
        public init() {
        }
    }

    /// 查询录像上云模板列表返回数据
    public struct ListRecordBackupTemplatesResponse: TCResponseModel {
        private let data: Wrapped

        private struct Wrapped: Codable {
            public let templateId: String?

            public let templateName: String?

            public let timeSections: [RecordTemplateTimeSections]?

            public let devTimeSections: [RecordTemplateTimeSections]?

            public let scale: Int64?

            public let createAt: String?

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

        /// 模板ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var templateId: String? {
            self.data.templateId
        }

        /// 模板名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var templateName: String? {
            self.data.templateName
        }

        /// 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var timeSections: [RecordTemplateTimeSections]? {
            self.data.timeSections
        }

        /// 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var devTimeSections: [RecordTemplateTimeSections]? {
            self.data.devTimeSections
        }

        /// 上云倍速（支持1，2，4倍速）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var scale: Int64? {
            self.data.scale
        }

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var createAt: String? {
            self.data.createAt
        }

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var updateAt: String? {
            self.data.updateAt
        }

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询录像上云模板列表
    ///
    /// 用于查询录像上云模板列表。
    @inlinable
    public func listRecordBackupTemplates(_ input: ListRecordBackupTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordBackupTemplatesResponse> {
        self.client.execute(action: "ListRecordBackupTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录像上云模板列表
    ///
    /// 用于查询录像上云模板列表。
    @inlinable
    public func listRecordBackupTemplates(_ input: ListRecordBackupTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecordBackupTemplatesResponse {
        try await self.client.execute(action: "ListRecordBackupTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录像上云模板列表
    ///
    /// 用于查询录像上云模板列表。
    @inlinable
    public func listRecordBackupTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordBackupTemplatesResponse> {
        self.listRecordBackupTemplates(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询录像上云模板列表
    ///
    /// 用于查询录像上云模板列表。
    @inlinable
    public func listRecordBackupTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecordBackupTemplatesResponse {
        try await self.listRecordBackupTemplates(.init(), region: region, logger: logger, on: eventLoop)
    }
}
