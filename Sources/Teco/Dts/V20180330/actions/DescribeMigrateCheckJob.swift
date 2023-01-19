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
    /// DescribeMigrateCheckJob请求参数结构体
    public struct DescribeMigrateCheckJobRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// DescribeMigrateCheckJob返回参数结构体
    public struct DescribeMigrateCheckJobResponse: TCResponseModel {
        /// 校验任务状态：unavailable(当前不可用), starting(开始中)，running(校验中)，finished(校验完成)
        public let status: String

        /// 任务的错误码
        public let errorCode: Int64

        /// 任务的错误信息
        public let errorMessage: String

        /// Check任务总进度,如："30"表示30%
        public let progress: String

        /// 校验是否通过,0-未通过，1-校验通过, 3-未校验
        public let checkFlag: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case progress = "Progress"
            case checkFlag = "CheckFlag"
            case requestId = "RequestId"
        }
    }

    /// 获取迁移校验结果
    ///
    /// 本接口用于创建校验后,获取校验的结果. 能查询到当前校验的状态和进度.
    /// 若通过校验, 则可调用'StartMigrateJob' 开始迁移.
    /// 若未通过校验, 则能查询到校验失败的原因. 请按照报错, 通过'ModifyMigrateJob'修改迁移配置或是调整源/目标实例的相关参数.
    @inlinable
    public func describeMigrateCheckJob(_ input: DescribeMigrateCheckJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrateCheckJobResponse> {
        self.client.execute(action: "DescribeMigrateCheckJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取迁移校验结果
    ///
    /// 本接口用于创建校验后,获取校验的结果. 能查询到当前校验的状态和进度.
    /// 若通过校验, 则可调用'StartMigrateJob' 开始迁移.
    /// 若未通过校验, 则能查询到校验失败的原因. 请按照报错, 通过'ModifyMigrateJob'修改迁移配置或是调整源/目标实例的相关参数.
    @inlinable
    public func describeMigrateCheckJob(_ input: DescribeMigrateCheckJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrateCheckJobResponse {
        try await self.client.execute(action: "DescribeMigrateCheckJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取迁移校验结果
    ///
    /// 本接口用于创建校验后,获取校验的结果. 能查询到当前校验的状态和进度.
    /// 若通过校验, 则可调用'StartMigrateJob' 开始迁移.
    /// 若未通过校验, 则能查询到校验失败的原因. 请按照报错, 通过'ModifyMigrateJob'修改迁移配置或是调整源/目标实例的相关参数.
    @inlinable
    public func describeMigrateCheckJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrateCheckJobResponse> {
        self.describeMigrateCheckJob(DescribeMigrateCheckJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取迁移校验结果
    ///
    /// 本接口用于创建校验后,获取校验的结果. 能查询到当前校验的状态和进度.
    /// 若通过校验, 则可调用'StartMigrateJob' 开始迁移.
    /// 若未通过校验, 则能查询到校验失败的原因. 请按照报错, 通过'ModifyMigrateJob'修改迁移配置或是调整源/目标实例的相关参数.
    @inlinable
    public func describeMigrateCheckJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrateCheckJobResponse {
        try await self.describeMigrateCheckJob(DescribeMigrateCheckJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
