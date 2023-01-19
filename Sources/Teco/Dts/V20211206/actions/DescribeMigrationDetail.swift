//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dts {
    /// DescribeMigrationDetail请求参数结构体
    public struct DescribeMigrationDetailRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// DescribeMigrationDetail返回参数结构体
    public struct DescribeMigrationDetailResponse: TCResponseModel {
        /// 数据迁移任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobId: String?

        /// 数据迁移任务名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobName: String?

        /// 任务创建(提交)时间，格式为 yyyy-mm-dd hh:mm:ss
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 任务更新时间，格式为 yyyy-mm-dd hh:mm:ss
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 任务开始执行时间，格式为 yyyy-mm-dd hh:mm:ss
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: String?

        /// 任务执行结束时间，格式为 yyyy-mm-dd hh:mm:ss
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: String?

        /// 迁移任务简要错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let briefMsg: String?

        /// 任务状态，取值为：created(创建完成)、checking(校验中)、checkPass(校验通过)、checkNotPass(校验不通过)、readyRun(准备运行)、running(任务运行中)、readyComplete(准备完成)、success(任务成功)、failed(任务失败)、stopping(中止中)、completing(完成中)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 任务操作信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let action: MigrateAction?

        /// 迁移执行过程信息，在校验阶段显示校验过程步骤信息，在迁移阶段会显示迁移步骤信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stepInfo: MigrateDetailInfo?

        /// 源实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let srcInfo: DBEndpointInfo?

        /// 目标端信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dstInfo: DBEndpointInfo?

        /// 数据一致性校验结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compareTask: CompareTaskInfo?

        /// 标签信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [TagItem]?

        /// 运行模式，取值如：immediate(表示立即运行)、timed(表示定时运行)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runMode: String?

        /// 期待启动时间，当RunMode取值为timed时，此值必填，形如："2006-01-02 15:04:05"
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expectRunTime: String?

        /// 迁移选项，描述任务如何执行迁移等一系列配置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let migrateOption: MigrateOption?

        /// 校验任务运行详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let checkStepInfo: CheckStepInfo?

        /// 描述计费相关的信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tradeInfo: TradeInfo?

        /// 任务错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorInfo: [ErrorInfoItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobName = "JobName"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case briefMsg = "BriefMsg"
            case status = "Status"
            case action = "Action"
            case stepInfo = "StepInfo"
            case srcInfo = "SrcInfo"
            case dstInfo = "DstInfo"
            case compareTask = "CompareTask"
            case tags = "Tags"
            case runMode = "RunMode"
            case expectRunTime = "ExpectRunTime"
            case migrateOption = "MigrateOption"
            case checkStepInfo = "CheckStepInfo"
            case tradeInfo = "TradeInfo"
            case errorInfo = "ErrorInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询某个迁移任务详情
    @inlinable
    public func describeMigrationDetail(_ input: DescribeMigrationDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrationDetailResponse> {
        self.client.execute(action: "DescribeMigrationDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个迁移任务详情
    @inlinable
    public func describeMigrationDetail(_ input: DescribeMigrationDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationDetailResponse {
        try await self.client.execute(action: "DescribeMigrationDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个迁移任务详情
    @inlinable
    public func describeMigrationDetail(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrationDetailResponse> {
        self.describeMigrationDetail(DescribeMigrationDetailRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个迁移任务详情
    @inlinable
    public func describeMigrationDetail(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationDetailResponse {
        try await self.describeMigrationDetail(DescribeMigrationDetailRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
