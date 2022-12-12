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

extension Cdb {
    /// ModifyInstanceParam请求参数结构体
    public struct ModifyInstanceParamRequest: TCRequestModel {
        /// 实例短 ID 列表。
        public let instanceIds: [String]
        
        /// 要修改的参数列表。每一个元素是 Name 和 CurrentValue 的组合。Name 是参数名，CurrentValue 是要修改成的值。
        public let paramList: [Parameter]?
        
        /// 模板id，ParamList和TemplateId必须至少传其中之一
        public let templateId: Int64?
        
        /// 执行参数调整任务的方式，默认为 0。支持值包括：0 - 立刻执行，1 - 时间窗执行；当该值为 1 时，每次只能传一个实例（InstanceIds数量为1）
        public let waitSwitch: Int64?
        
        /// 参数是否同步到主实例下的只读实例。true 为不同步，false 为同步。默认为 false。
        public let notSyncRo: Bool?
        
        /// 参数是否同步到主实例下的灾备实例。true 为不同步，false 为同步。默认为 false。
        public let notSyncDr: Bool?
        
        public init (instanceIds: [String], paramList: [Parameter]? = nil, templateId: Int64? = nil, waitSwitch: Int64? = nil, notSyncRo: Bool? = nil, notSyncDr: Bool? = nil) {
            self.instanceIds = instanceIds
            self.paramList = paramList
            self.templateId = templateId
            self.waitSwitch = waitSwitch
            self.notSyncRo = notSyncRo
            self.notSyncDr = notSyncDr
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case paramList = "ParamList"
            case templateId = "TemplateId"
            case waitSwitch = "WaitSwitch"
            case notSyncRo = "NotSyncRo"
            case notSyncDr = "NotSyncDr"
        }
    }
    
    /// ModifyInstanceParam返回参数结构体
    public struct ModifyInstanceParamResponse: TCResponseModel {
        /// 异步任务 ID，可用于查询任务进度。
        public let asyncRequestId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }
    
    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParam)用于修改云数据库实例的参数。
    @inlinable
    public func modifyInstanceParam(_ input: ModifyInstanceParamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstanceParamResponse > {
        self.client.execute(action: "ModifyInstanceParam", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParam)用于修改云数据库实例的参数。
    @inlinable
    public func modifyInstanceParam(_ input: ModifyInstanceParamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceParamResponse {
        try await self.client.execute(action: "ModifyInstanceParam", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
