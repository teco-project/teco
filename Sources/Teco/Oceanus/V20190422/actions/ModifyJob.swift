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

extension Oceanus {
    /// ModifyJob请求参数结构体
    public struct ModifyJobRequest: TCRequestModel {
        /// 作业Id
        public let jobId: String

        /// 作业名称，支持长度小于50的中文/英文/数字/”-”/”_”/”.”，不能重名
        public let name: String?

        /// 描述
        public let remark: String?

        /// 拖拽文件需传入此参数
        public let targetFolderId: String?

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(jobId: String, name: String? = nil, remark: String? = nil, targetFolderId: String? = nil, workSpaceId: String? = nil) {
            self.jobId = jobId
            self.name = name
            self.remark = remark
            self.targetFolderId = targetFolderId
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case name = "Name"
            case remark = "Remark"
            case targetFolderId = "TargetFolderId"
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// ModifyJob返回参数结构体
    public struct ModifyJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新作业
    ///
    /// 更新作业属性，仅允许以下3种操作，不支持组合操作：
    /// (1)	更新作业名称
    /// (2)	更新作业备注
    /// (3)	更新作业最大并行度
    /// 变更前提：WorkerCuNum<=MaxParallelism
    /// 如果MaxParallelism变小，不重启作业，待下一次重启生效
    /// 如果MaxParallelism变大，则要求入参RestartAllowed必须为True
    /// 假设作业运行状态，则先停止作业，再启动作业，中间状态丢失
    /// 假设作业暂停状态，则将作业更改为停止状态，中间状态丢失
    @inlinable @discardableResult
    public func modifyJob(_ input: ModifyJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyJobResponse> {
        self.client.execute(action: "ModifyJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新作业
    ///
    /// 更新作业属性，仅允许以下3种操作，不支持组合操作：
    /// (1)	更新作业名称
    /// (2)	更新作业备注
    /// (3)	更新作业最大并行度
    /// 变更前提：WorkerCuNum<=MaxParallelism
    /// 如果MaxParallelism变小，不重启作业，待下一次重启生效
    /// 如果MaxParallelism变大，则要求入参RestartAllowed必须为True
    /// 假设作业运行状态，则先停止作业，再启动作业，中间状态丢失
    /// 假设作业暂停状态，则将作业更改为停止状态，中间状态丢失
    @inlinable @discardableResult
    public func modifyJob(_ input: ModifyJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyJobResponse {
        try await self.client.execute(action: "ModifyJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新作业
    ///
    /// 更新作业属性，仅允许以下3种操作，不支持组合操作：
    /// (1)	更新作业名称
    /// (2)	更新作业备注
    /// (3)	更新作业最大并行度
    /// 变更前提：WorkerCuNum<=MaxParallelism
    /// 如果MaxParallelism变小，不重启作业，待下一次重启生效
    /// 如果MaxParallelism变大，则要求入参RestartAllowed必须为True
    /// 假设作业运行状态，则先停止作业，再启动作业，中间状态丢失
    /// 假设作业暂停状态，则将作业更改为停止状态，中间状态丢失
    @inlinable @discardableResult
    public func modifyJob(jobId: String, name: String? = nil, remark: String? = nil, targetFolderId: String? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyJobResponse> {
        let input = ModifyJobRequest(jobId: jobId, name: name, remark: remark, targetFolderId: targetFolderId, workSpaceId: workSpaceId)
        return self.client.execute(action: "ModifyJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新作业
    ///
    /// 更新作业属性，仅允许以下3种操作，不支持组合操作：
    /// (1)	更新作业名称
    /// (2)	更新作业备注
    /// (3)	更新作业最大并行度
    /// 变更前提：WorkerCuNum<=MaxParallelism
    /// 如果MaxParallelism变小，不重启作业，待下一次重启生效
    /// 如果MaxParallelism变大，则要求入参RestartAllowed必须为True
    /// 假设作业运行状态，则先停止作业，再启动作业，中间状态丢失
    /// 假设作业暂停状态，则将作业更改为停止状态，中间状态丢失
    @inlinable @discardableResult
    public func modifyJob(jobId: String, name: String? = nil, remark: String? = nil, targetFolderId: String? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyJobResponse {
        let input = ModifyJobRequest(jobId: jobId, name: name, remark: remark, targetFolderId: targetFolderId, workSpaceId: workSpaceId)
        return try await self.client.execute(action: "ModifyJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
