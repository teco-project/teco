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

import TecoCore

extension Scf {
    /// DeleteTrigger请求参数结构体
    public struct DeleteTriggerRequest: TCRequestModel {
        /// 函数的名称
        public let functionName: String

        /// 要删除的触发器名称
        public let triggerName: String

        /// 要删除的触发器类型，目前支持 cos 、cmq、 timer、ckafka 类型
        public let type: String

        /// 函数所属命名空间
        public let namespace: String?

        /// 如果删除的触发器类型为 COS 触发器，该字段为必填值，存放 JSON 格式的数据 {"event":"cos:ObjectCreated:*"}，数据内容和 SetTrigger 接口中该字段的格式相同；如果删除的触发器类型为定时触发器或 CMQ 触发器，可以不指定该字段
        public let triggerDesc: String?

        /// 函数的版本，默认为 $LATEST，建议填写 [$DEFAULT](https://cloud.tencent.com/document/product/583/36149#.E9.BB.98.E8.AE.A4.E5.88.AB.E5.90.8D)方便后续进行版本的灰度发布。
        public let qualifier: String?

        public init(functionName: String, triggerName: String, type: String, namespace: String? = nil, triggerDesc: String? = nil, qualifier: String? = nil) {
            self.functionName = functionName
            self.triggerName = triggerName
            self.type = type
            self.namespace = namespace
            self.triggerDesc = triggerDesc
            self.qualifier = qualifier
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case triggerName = "TriggerName"
            case type = "Type"
            case namespace = "Namespace"
            case triggerDesc = "TriggerDesc"
            case qualifier = "Qualifier"
        }
    }

    /// DeleteTrigger返回参数结构体
    public struct DeleteTriggerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除触发器
    ///
    /// 该接口根据参数传入删除已有的触发方式。
    @inlinable @discardableResult
    public func deleteTrigger(_ input: DeleteTriggerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTriggerResponse> {
        self.client.execute(action: "DeleteTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除触发器
    ///
    /// 该接口根据参数传入删除已有的触发方式。
    @inlinable @discardableResult
    public func deleteTrigger(_ input: DeleteTriggerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTriggerResponse {
        try await self.client.execute(action: "DeleteTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除触发器
    ///
    /// 该接口根据参数传入删除已有的触发方式。
    @inlinable @discardableResult
    public func deleteTrigger(functionName: String, triggerName: String, type: String, namespace: String? = nil, triggerDesc: String? = nil, qualifier: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTriggerResponse> {
        self.deleteTrigger(.init(functionName: functionName, triggerName: triggerName, type: type, namespace: namespace, triggerDesc: triggerDesc, qualifier: qualifier), region: region, logger: logger, on: eventLoop)
    }

    /// 删除触发器
    ///
    /// 该接口根据参数传入删除已有的触发方式。
    @inlinable @discardableResult
    public func deleteTrigger(functionName: String, triggerName: String, type: String, namespace: String? = nil, triggerDesc: String? = nil, qualifier: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTriggerResponse {
        try await self.deleteTrigger(.init(functionName: functionName, triggerName: triggerName, type: type, namespace: namespace, triggerDesc: triggerDesc, qualifier: qualifier), region: region, logger: logger, on: eventLoop)
    }
}
