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

extension Ess {
    /// CreateBatchCancelFlowUrl请求参数结构体
    public struct CreateBatchCancelFlowUrlRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 需要执行撤回的签署流程id数组，最多100个
        public let flowIds: [String]

        public init(operator: UserInfo, flowIds: [String]) {
            self.`operator` = `operator`
            self.flowIds = flowIds
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowIds = "FlowIds"
        }
    }

    /// CreateBatchCancelFlowUrl返回参数结构体
    public struct CreateBatchCancelFlowUrlResponse: TCResponseModel {
        /// 批量撤回签署流程链接
        public let batchCancelFlowUrl: String

        /// 签署流程撤回失败信息
        public let failMessages: [String]

        /// 签署连接过期时间字符串：年月日-时分秒
        public let urlExpireOn: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchCancelFlowUrl = "BatchCancelFlowUrl"
            case failMessages = "FailMessages"
            case urlExpireOn = "UrlExpireOn"
            case requestId = "RequestId"
        }
    }

    /// 获取批量撤销签署流程链接
    ///
    /// 电子签企业版：指定需要批量撤回的签署流程Id，获取批量撤销链接
    /// 客户指定需要撤回的签署流程Id，最多100个，超过100不处理；接口调用成功返回批量撤回合同的链接，通过链接跳转到电子签小程序完成批量撤回
    @inlinable
    public func createBatchCancelFlowUrl(_ input: CreateBatchCancelFlowUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBatchCancelFlowUrlResponse > {
        self.client.execute(action: "CreateBatchCancelFlowUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取批量撤销签署流程链接
    ///
    /// 电子签企业版：指定需要批量撤回的签署流程Id，获取批量撤销链接
    /// 客户指定需要撤回的签署流程Id，最多100个，超过100不处理；接口调用成功返回批量撤回合同的链接，通过链接跳转到电子签小程序完成批量撤回
    @inlinable
    public func createBatchCancelFlowUrl(_ input: CreateBatchCancelFlowUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchCancelFlowUrlResponse {
        try await self.client.execute(action: "CreateBatchCancelFlowUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取批量撤销签署流程链接
    ///
    /// 电子签企业版：指定需要批量撤回的签署流程Id，获取批量撤销链接
    /// 客户指定需要撤回的签署流程Id，最多100个，超过100不处理；接口调用成功返回批量撤回合同的链接，通过链接跳转到电子签小程序完成批量撤回
    @inlinable
    public func createBatchCancelFlowUrl(operator: UserInfo, flowIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBatchCancelFlowUrlResponse > {
        self.createBatchCancelFlowUrl(CreateBatchCancelFlowUrlRequest(operator: `operator`, flowIds: flowIds), logger: logger, on: eventLoop)
    }

    /// 获取批量撤销签署流程链接
    ///
    /// 电子签企业版：指定需要批量撤回的签署流程Id，获取批量撤销链接
    /// 客户指定需要撤回的签署流程Id，最多100个，超过100不处理；接口调用成功返回批量撤回合同的链接，通过链接跳转到电子签小程序完成批量撤回
    @inlinable
    public func createBatchCancelFlowUrl(operator: UserInfo, flowIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBatchCancelFlowUrlResponse {
        try await self.createBatchCancelFlowUrl(CreateBatchCancelFlowUrlRequest(operator: `operator`, flowIds: flowIds), logger: logger, on: eventLoop)
    }
}
