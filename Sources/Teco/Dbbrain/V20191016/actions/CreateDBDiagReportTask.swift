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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dbbrain {
    /// CreateDBDiagReportTask请求参数结构体
    public struct CreateDBDiagReportTaskRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// 开始时间，如“2020-11-08T14:00:00+08:00”。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间，如“2020-11-09T14:00:00+08:00”。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 是否发送邮件: 0 - 否，1 - 是。
        public let sendMailFlag: Int64

        /// 接收邮件的联系人ID数组。
        public let contactPerson: [Int64]?

        /// 接收邮件的联系组ID数组。
        public let contactGroup: [Int64]?

        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认值为"mysql"。
        public let product: String?

        public init(instanceId: String, startTime: Date, endTime: Date, sendMailFlag: Int64, contactPerson: [Int64]? = nil, contactGroup: [Int64]? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.sendMailFlag = sendMailFlag
            self.contactPerson = contactPerson
            self.contactGroup = contactGroup
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case sendMailFlag = "SendMailFlag"
            case contactPerson = "ContactPerson"
            case contactGroup = "ContactGroup"
            case product = "Product"
        }
    }

    /// CreateDBDiagReportTask返回参数结构体
    public struct CreateDBDiagReportTaskResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncRequestId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 创建健康报告生成任务
    ///
    /// 创建健康报告，并可以选择是否发送邮件。
    @inlinable
    public func createDBDiagReportTask(_ input: CreateDBDiagReportTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBDiagReportTaskResponse> {
        self.client.execute(action: "CreateDBDiagReportTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建健康报告生成任务
    ///
    /// 创建健康报告，并可以选择是否发送邮件。
    @inlinable
    public func createDBDiagReportTask(_ input: CreateDBDiagReportTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBDiagReportTaskResponse {
        try await self.client.execute(action: "CreateDBDiagReportTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建健康报告生成任务
    ///
    /// 创建健康报告，并可以选择是否发送邮件。
    @inlinable
    public func createDBDiagReportTask(instanceId: String, startTime: Date, endTime: Date, sendMailFlag: Int64, contactPerson: [Int64]? = nil, contactGroup: [Int64]? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBDiagReportTaskResponse> {
        self.createDBDiagReportTask(CreateDBDiagReportTaskRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, sendMailFlag: sendMailFlag, contactPerson: contactPerson, contactGroup: contactGroup, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 创建健康报告生成任务
    ///
    /// 创建健康报告，并可以选择是否发送邮件。
    @inlinable
    public func createDBDiagReportTask(instanceId: String, startTime: Date, endTime: Date, sendMailFlag: Int64, contactPerson: [Int64]? = nil, contactGroup: [Int64]? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBDiagReportTaskResponse {
        try await self.createDBDiagReportTask(CreateDBDiagReportTaskRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, sendMailFlag: sendMailFlag, contactPerson: contactPerson, contactGroup: contactGroup, product: product), region: region, logger: logger, on: eventLoop)
    }
}
