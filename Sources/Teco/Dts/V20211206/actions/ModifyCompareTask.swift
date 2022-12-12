//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// ModifyCompareTask请求参数结构体
    public struct ModifyCompareTaskRequest: TCRequestModel {
        /// 迁移任务 Id
        public let jobId: String
        
        /// 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        public let compareTaskId: String
        
        /// 任务名称
        public let taskName: String?
        
        /// 数据对比对象模式，sameAsMigrate(全部迁移对象， **默认为此项配置**)，custom(自定义模式)
        public let objectMode: String?
        
        /// 对比对象，若CompareObjectMode取值为custom，则此项必填
        public let objects: CompareObject?
        
        public init (jobId: String, compareTaskId: String, taskName: String? = nil, objectMode: String? = nil, objects: CompareObject? = nil) {
            self.jobId = jobId
            self.compareTaskId = compareTaskId
            self.taskName = taskName
            self.objectMode = objectMode
            self.objects = objects
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case compareTaskId = "CompareTaskId"
            case taskName = "TaskName"
            case objectMode = "ObjectMode"
            case objects = "Objects"
        }
    }
    
    /// ModifyCompareTask返回参数结构体
    public struct ModifyCompareTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改一致性校验任务
    ///
    /// 修改一致性校验任务，在任务创建后启动之前，可修改一致性校验参数
    @inlinable
    public func modifyCompareTask(_ input: ModifyCompareTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyCompareTaskResponse > {
        self.client.execute(action: "ModifyCompareTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改一致性校验任务
    ///
    /// 修改一致性校验任务，在任务创建后启动之前，可修改一致性校验参数
    @inlinable
    public func modifyCompareTask(_ input: ModifyCompareTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCompareTaskResponse {
        try await self.client.execute(action: "ModifyCompareTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
