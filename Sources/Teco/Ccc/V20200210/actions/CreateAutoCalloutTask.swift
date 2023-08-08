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

import Logging
import NIOCore
import TecoCore

extension Ccc {
    /// CreateAutoCalloutTask请求参数结构体
    public struct CreateAutoCalloutTaskRequest: TCRequestModel {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: UInt64

        /// 任务起始时间戳，Unix 秒级时间戳
        public let notBefore: Int64

        /// 被叫号码列表
        public let callees: [String]

        /// 主叫号码列表
        public let callers: [String]

        /// 呼叫使用的Ivr
        public let ivrId: UInt64

        /// 任务名
        public let name: String?

        /// 任务描述
        public let description: String?

        /// 任务停止时间戳，Unix 秒级时间戳
        public let notAfter: Int64?

        /// 最大尝试次数
        public let tries: UInt64?

        /// 自定义变量（仅高级版支持）
        public let variables: [Variable]?

        /// UUI
        public let uui: String?

        /// 被叫属性
        public let calleeAttributes: [CalleeAttribute]?

        public init(sdkAppId: UInt64, notBefore: Int64, callees: [String], callers: [String], ivrId: UInt64, name: String? = nil, description: String? = nil, notAfter: Int64? = nil, tries: UInt64? = nil, variables: [Variable]? = nil, uui: String? = nil, calleeAttributes: [CalleeAttribute]? = nil) {
            self.sdkAppId = sdkAppId
            self.notBefore = notBefore
            self.callees = callees
            self.callers = callers
            self.ivrId = ivrId
            self.name = name
            self.description = description
            self.notAfter = notAfter
            self.tries = tries
            self.variables = variables
            self.uui = uui
            self.calleeAttributes = calleeAttributes
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case notBefore = "NotBefore"
            case callees = "Callees"
            case callers = "Callers"
            case ivrId = "IvrId"
            case name = "Name"
            case description = "Description"
            case notAfter = "NotAfter"
            case tries = "Tries"
            case variables = "Variables"
            case uui = "UUI"
            case calleeAttributes = "CalleeAttributes"
        }
    }

    /// CreateAutoCalloutTask返回参数结构体
    public struct CreateAutoCalloutTaskResponse: TCResponseModel {
        /// 任务Id
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建自动外呼任务
    @inlinable
    public func createAutoCalloutTask(_ input: CreateAutoCalloutTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAutoCalloutTaskResponse> {
        self.client.execute(action: "CreateAutoCalloutTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建自动外呼任务
    @inlinable
    public func createAutoCalloutTask(_ input: CreateAutoCalloutTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAutoCalloutTaskResponse {
        try await self.client.execute(action: "CreateAutoCalloutTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建自动外呼任务
    @inlinable
    public func createAutoCalloutTask(sdkAppId: UInt64, notBefore: Int64, callees: [String], callers: [String], ivrId: UInt64, name: String? = nil, description: String? = nil, notAfter: Int64? = nil, tries: UInt64? = nil, variables: [Variable]? = nil, uui: String? = nil, calleeAttributes: [CalleeAttribute]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAutoCalloutTaskResponse> {
        self.createAutoCalloutTask(.init(sdkAppId: sdkAppId, notBefore: notBefore, callees: callees, callers: callers, ivrId: ivrId, name: name, description: description, notAfter: notAfter, tries: tries, variables: variables, uui: uui, calleeAttributes: calleeAttributes), region: region, logger: logger, on: eventLoop)
    }

    /// 创建自动外呼任务
    @inlinable
    public func createAutoCalloutTask(sdkAppId: UInt64, notBefore: Int64, callees: [String], callers: [String], ivrId: UInt64, name: String? = nil, description: String? = nil, notAfter: Int64? = nil, tries: UInt64? = nil, variables: [Variable]? = nil, uui: String? = nil, calleeAttributes: [CalleeAttribute]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAutoCalloutTaskResponse {
        try await self.createAutoCalloutTask(.init(sdkAppId: sdkAppId, notBefore: notBefore, callees: callees, callers: callers, ivrId: ivrId, name: name, description: description, notAfter: notAfter, tries: tries, variables: variables, uui: uui, calleeAttributes: calleeAttributes), region: region, logger: logger, on: eventLoop)
    }
}
