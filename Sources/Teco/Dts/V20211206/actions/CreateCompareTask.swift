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
    /// CreateCompareTask请求参数结构体
    public struct CreateCompareTaskRequest: TCRequestModel {
        /// 迁移任务 Id
        public let jobId: String

        /// 数据对比任务名称，若为空则默认给CompareTaskId相同值
        public let taskName: String?

        /// 数据对比对象模式，sameAsMigrate(全部迁移对象， 默认为此项配置)，custom(自定义模式)
        public let objectMode: String?

        /// 一致性对比对象配置
        public let objects: CompareObject?

        public init(jobId: String, taskName: String? = nil, objectMode: String? = nil, objects: CompareObject? = nil) {
            self.jobId = jobId
            self.taskName = taskName
            self.objectMode = objectMode
            self.objects = objects
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case taskName = "TaskName"
            case objectMode = "ObjectMode"
            case objects = "Objects"
        }
    }

    /// CreateCompareTask返回参数结构体
    public struct CreateCompareTaskResponse: TCResponseModel {
        /// 数据对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compareTaskId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case compareTaskId = "CompareTaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建一致性校验任务
    ///
    /// 本接口用于创建数据对比任务，创建成功后会返回数据对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9，创建成功后可通过StartCompare启动一致性校验任务
    @inlinable
    public func createCompareTask(_ input: CreateCompareTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCompareTaskResponse> {
        self.client.execute(action: "CreateCompareTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建一致性校验任务
    ///
    /// 本接口用于创建数据对比任务，创建成功后会返回数据对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9，创建成功后可通过StartCompare启动一致性校验任务
    @inlinable
    public func createCompareTask(_ input: CreateCompareTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCompareTaskResponse {
        try await self.client.execute(action: "CreateCompareTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建一致性校验任务
    ///
    /// 本接口用于创建数据对比任务，创建成功后会返回数据对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9，创建成功后可通过StartCompare启动一致性校验任务
    @inlinable
    public func createCompareTask(jobId: String, taskName: String? = nil, objectMode: String? = nil, objects: CompareObject? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCompareTaskResponse> {
        self.createCompareTask(CreateCompareTaskRequest(jobId: jobId, taskName: taskName, objectMode: objectMode, objects: objects), region: region, logger: logger, on: eventLoop)
    }

    /// 创建一致性校验任务
    ///
    /// 本接口用于创建数据对比任务，创建成功后会返回数据对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9，创建成功后可通过StartCompare启动一致性校验任务
    @inlinable
    public func createCompareTask(jobId: String, taskName: String? = nil, objectMode: String? = nil, objects: CompareObject? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCompareTaskResponse {
        try await self.createCompareTask(CreateCompareTaskRequest(jobId: jobId, taskName: taskName, objectMode: objectMode, objects: objects), region: region, logger: logger, on: eventLoop)
    }
}
