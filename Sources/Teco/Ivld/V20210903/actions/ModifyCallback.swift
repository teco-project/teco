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

extension Ivld {
    /// ModifyCallback请求参数结构体
    public struct ModifyCallbackRequest: TCRequest {
        /// 任务分析完成后回调地址
        public let taskFinishNotifyURL: String

        /// 媒体导入完成后回调地址
        public let mediaFinishNotifyURL: String

        public init(taskFinishNotifyURL: String, mediaFinishNotifyURL: String) {
            self.taskFinishNotifyURL = taskFinishNotifyURL
            self.mediaFinishNotifyURL = mediaFinishNotifyURL
        }

        enum CodingKeys: String, CodingKey {
            case taskFinishNotifyURL = "TaskFinishNotifyURL"
            case mediaFinishNotifyURL = "MediaFinishNotifyURL"
        }
    }

    /// ModifyCallback返回参数结构体
    public struct ModifyCallbackResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑回调地址
    ///
    /// 用户设置对应事件的回调地址
    ///
    /// ### 回调事件消息通知协议
    ///
    /// #### 网络协议
    /// - 回调接口协议目前仅支持http/https协议；
    /// - 请求：HTTP POST 请求，包体内容为 JSON，每一种消息的具体包体内容参见后文。
    /// - 应答：HTTP STATUS CODE = 200，服务端忽略应答包具体内容，为了协议友好，建议客户应答内容携带 JSON： `{"code":0}`
    ///
    /// #### 通知可靠性
    ///
    /// 事件通知服务具备重试能力，事件通知失败后会总计重试3次；
    /// 为了避免重试对您的服务器以及网络带宽造成冲击，请保持正常回包。触发重试条件如下：
    /// - 长时间（5 秒）未回包应答。
    /// - 应答 HTTP STATUS 不为200。
    ///
    /// #### 回调接口协议
    ///
    /// ##### 分析任务完成消息回调
    /// | 参数名称 | 必选 | 类型 | 描述 |
    /// |---------|---------|---------|---------|
    /// | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
    /// | TaskId | 是 | String | 任务ID |
    /// | TaskStatus | 是 | [TaskStatus](/document/product/1509/65063#TaskInfo) | 任务执行状态 |
    /// | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |
    ///
    /// ##### 导入媒资完成消息回调
    /// | 参数名称 | 必选 | 类型 | 描述 |
    /// |---------|---------|---------|---------|
    /// | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
    /// | MediaId | 是 | String | 媒资ID |
    /// | MediaStatus | 是 | [MediaStatus](/document/product/1509/65063#MediaInfo) | 媒资导入状态|
    /// | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |
    @inlinable @discardableResult
    public func modifyCallback(_ input: ModifyCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCallbackResponse> {
        self.client.execute(action: "ModifyCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑回调地址
    ///
    /// 用户设置对应事件的回调地址
    ///
    /// ### 回调事件消息通知协议
    ///
    /// #### 网络协议
    /// - 回调接口协议目前仅支持http/https协议；
    /// - 请求：HTTP POST 请求，包体内容为 JSON，每一种消息的具体包体内容参见后文。
    /// - 应答：HTTP STATUS CODE = 200，服务端忽略应答包具体内容，为了协议友好，建议客户应答内容携带 JSON： `{"code":0}`
    ///
    /// #### 通知可靠性
    ///
    /// 事件通知服务具备重试能力，事件通知失败后会总计重试3次；
    /// 为了避免重试对您的服务器以及网络带宽造成冲击，请保持正常回包。触发重试条件如下：
    /// - 长时间（5 秒）未回包应答。
    /// - 应答 HTTP STATUS 不为200。
    ///
    /// #### 回调接口协议
    ///
    /// ##### 分析任务完成消息回调
    /// | 参数名称 | 必选 | 类型 | 描述 |
    /// |---------|---------|---------|---------|
    /// | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
    /// | TaskId | 是 | String | 任务ID |
    /// | TaskStatus | 是 | [TaskStatus](/document/product/1509/65063#TaskInfo) | 任务执行状态 |
    /// | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |
    ///
    /// ##### 导入媒资完成消息回调
    /// | 参数名称 | 必选 | 类型 | 描述 |
    /// |---------|---------|---------|---------|
    /// | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
    /// | MediaId | 是 | String | 媒资ID |
    /// | MediaStatus | 是 | [MediaStatus](/document/product/1509/65063#MediaInfo) | 媒资导入状态|
    /// | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |
    @inlinable @discardableResult
    public func modifyCallback(_ input: ModifyCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCallbackResponse {
        try await self.client.execute(action: "ModifyCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑回调地址
    ///
    /// 用户设置对应事件的回调地址
    ///
    /// ### 回调事件消息通知协议
    ///
    /// #### 网络协议
    /// - 回调接口协议目前仅支持http/https协议；
    /// - 请求：HTTP POST 请求，包体内容为 JSON，每一种消息的具体包体内容参见后文。
    /// - 应答：HTTP STATUS CODE = 200，服务端忽略应答包具体内容，为了协议友好，建议客户应答内容携带 JSON： `{"code":0}`
    ///
    /// #### 通知可靠性
    ///
    /// 事件通知服务具备重试能力，事件通知失败后会总计重试3次；
    /// 为了避免重试对您的服务器以及网络带宽造成冲击，请保持正常回包。触发重试条件如下：
    /// - 长时间（5 秒）未回包应答。
    /// - 应答 HTTP STATUS 不为200。
    ///
    /// #### 回调接口协议
    ///
    /// ##### 分析任务完成消息回调
    /// | 参数名称 | 必选 | 类型 | 描述 |
    /// |---------|---------|---------|---------|
    /// | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
    /// | TaskId | 是 | String | 任务ID |
    /// | TaskStatus | 是 | [TaskStatus](/document/product/1509/65063#TaskInfo) | 任务执行状态 |
    /// | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |
    ///
    /// ##### 导入媒资完成消息回调
    /// | 参数名称 | 必选 | 类型 | 描述 |
    /// |---------|---------|---------|---------|
    /// | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
    /// | MediaId | 是 | String | 媒资ID |
    /// | MediaStatus | 是 | [MediaStatus](/document/product/1509/65063#MediaInfo) | 媒资导入状态|
    /// | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |
    @inlinable @discardableResult
    public func modifyCallback(taskFinishNotifyURL: String, mediaFinishNotifyURL: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCallbackResponse> {
        self.modifyCallback(.init(taskFinishNotifyURL: taskFinishNotifyURL, mediaFinishNotifyURL: mediaFinishNotifyURL), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑回调地址
    ///
    /// 用户设置对应事件的回调地址
    ///
    /// ### 回调事件消息通知协议
    ///
    /// #### 网络协议
    /// - 回调接口协议目前仅支持http/https协议；
    /// - 请求：HTTP POST 请求，包体内容为 JSON，每一种消息的具体包体内容参见后文。
    /// - 应答：HTTP STATUS CODE = 200，服务端忽略应答包具体内容，为了协议友好，建议客户应答内容携带 JSON： `{"code":0}`
    ///
    /// #### 通知可靠性
    ///
    /// 事件通知服务具备重试能力，事件通知失败后会总计重试3次；
    /// 为了避免重试对您的服务器以及网络带宽造成冲击，请保持正常回包。触发重试条件如下：
    /// - 长时间（5 秒）未回包应答。
    /// - 应答 HTTP STATUS 不为200。
    ///
    /// #### 回调接口协议
    ///
    /// ##### 分析任务完成消息回调
    /// | 参数名称 | 必选 | 类型 | 描述 |
    /// |---------|---------|---------|---------|
    /// | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
    /// | TaskId | 是 | String | 任务ID |
    /// | TaskStatus | 是 | [TaskStatus](/document/product/1509/65063#TaskInfo) | 任务执行状态 |
    /// | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |
    ///
    /// ##### 导入媒资完成消息回调
    /// | 参数名称 | 必选 | 类型 | 描述 |
    /// |---------|---------|---------|---------|
    /// | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
    /// | MediaId | 是 | String | 媒资ID |
    /// | MediaStatus | 是 | [MediaStatus](/document/product/1509/65063#MediaInfo) | 媒资导入状态|
    /// | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |
    @inlinable @discardableResult
    public func modifyCallback(taskFinishNotifyURL: String, mediaFinishNotifyURL: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCallbackResponse {
        try await self.modifyCallback(.init(taskFinishNotifyURL: taskFinishNotifyURL, mediaFinishNotifyURL: mediaFinishNotifyURL), region: region, logger: logger, on: eventLoop)
    }
}
