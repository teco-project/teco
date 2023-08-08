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
    /// AddRecordBackupTemplate请求参数结构体
    public struct AddRecordBackupTemplateRequest: TCRequestModel {
        /// 模板名称（仅支持中文、英文、数字、_、-，长度不超过32个字符，模板名称全局唯一，不能为空，不能重复）
        public let templateName: String

        /// 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        public let timeSections: [RecordTemplateTimeSections]

        /// 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        public let devTimeSections: [RecordTemplateTimeSections]

        /// 上云倍速（支持1，2，4倍速）
        public let scale: Int64

        public init(templateName: String, timeSections: [RecordTemplateTimeSections], devTimeSections: [RecordTemplateTimeSections], scale: Int64) {
            self.templateName = templateName
            self.timeSections = timeSections
            self.devTimeSections = devTimeSections
            self.scale = scale
        }

        enum CodingKeys: String, CodingKey {
            case templateName = "TemplateName"
            case timeSections = "TimeSections"
            case devTimeSections = "DevTimeSections"
            case scale = "Scale"
        }
    }

    /// 新增录像上云模版返回数据
    public struct AddRecordBackupTemplateResponse: TCResponseModel {
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

    /// 新增录像上云模板
    ///
    /// 用于新增录像上云模板。
    /// > 该功能本质是拉取设备本地录像数据上云（即存在 IPC 摄像头存储卡或 NVR 硬盘中的录像），操作时需先设定录像时间段（即想要上云的设备本地录像），再设定上云时间段和上云倍速，平台将于上云时间段倍速拉取设备对应前一天的录像时间段数据。
    ///
    /// > 设定需至少满足（上云时间段=前一天的录像时间段/上云倍速），建议上云时间段可多设定10%左右的时间，避免因网络波动导致数据拉取不完整。
    @inlinable
    public func addRecordBackupTemplate(_ input: AddRecordBackupTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddRecordBackupTemplateResponse> {
        self.client.execute(action: "AddRecordBackupTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增录像上云模板
    ///
    /// 用于新增录像上云模板。
    /// > 该功能本质是拉取设备本地录像数据上云（即存在 IPC 摄像头存储卡或 NVR 硬盘中的录像），操作时需先设定录像时间段（即想要上云的设备本地录像），再设定上云时间段和上云倍速，平台将于上云时间段倍速拉取设备对应前一天的录像时间段数据。
    ///
    /// > 设定需至少满足（上云时间段=前一天的录像时间段/上云倍速），建议上云时间段可多设定10%左右的时间，避免因网络波动导致数据拉取不完整。
    @inlinable
    public func addRecordBackupTemplate(_ input: AddRecordBackupTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddRecordBackupTemplateResponse {
        try await self.client.execute(action: "AddRecordBackupTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增录像上云模板
    ///
    /// 用于新增录像上云模板。
    /// > 该功能本质是拉取设备本地录像数据上云（即存在 IPC 摄像头存储卡或 NVR 硬盘中的录像），操作时需先设定录像时间段（即想要上云的设备本地录像），再设定上云时间段和上云倍速，平台将于上云时间段倍速拉取设备对应前一天的录像时间段数据。
    ///
    /// > 设定需至少满足（上云时间段=前一天的录像时间段/上云倍速），建议上云时间段可多设定10%左右的时间，避免因网络波动导致数据拉取不完整。
    @inlinable
    public func addRecordBackupTemplate(templateName: String, timeSections: [RecordTemplateTimeSections], devTimeSections: [RecordTemplateTimeSections], scale: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddRecordBackupTemplateResponse> {
        self.addRecordBackupTemplate(.init(templateName: templateName, timeSections: timeSections, devTimeSections: devTimeSections, scale: scale), region: region, logger: logger, on: eventLoop)
    }

    /// 新增录像上云模板
    ///
    /// 用于新增录像上云模板。
    /// > 该功能本质是拉取设备本地录像数据上云（即存在 IPC 摄像头存储卡或 NVR 硬盘中的录像），操作时需先设定录像时间段（即想要上云的设备本地录像），再设定上云时间段和上云倍速，平台将于上云时间段倍速拉取设备对应前一天的录像时间段数据。
    ///
    /// > 设定需至少满足（上云时间段=前一天的录像时间段/上云倍速），建议上云时间段可多设定10%左右的时间，避免因网络波动导致数据拉取不完整。
    @inlinable
    public func addRecordBackupTemplate(templateName: String, timeSections: [RecordTemplateTimeSections], devTimeSections: [RecordTemplateTimeSections], scale: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddRecordBackupTemplateResponse {
        try await self.addRecordBackupTemplate(.init(templateName: templateName, timeSections: timeSections, devTimeSections: devTimeSections, scale: scale), region: region, logger: logger, on: eventLoop)
    }
}