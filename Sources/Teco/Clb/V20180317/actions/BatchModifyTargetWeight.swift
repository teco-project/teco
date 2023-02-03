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

extension Clb {
    /// BatchModifyTargetWeight请求参数结构体
    public struct BatchModifyTargetWeightRequest: TCRequestModel {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String

        /// 要批量修改权重的列表。
        public let modifyList: [RsWeightRule]

        public init(loadBalancerId: String, modifyList: [RsWeightRule]) {
            self.loadBalancerId = loadBalancerId
            self.modifyList = modifyList
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case modifyList = "ModifyList"
        }
    }

    /// BatchModifyTargetWeight返回参数结构体
    public struct BatchModifyTargetWeightResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量修改监听器绑定的后端机器的转发权重
    ///
    /// BatchModifyTargetWeight 接口用于批量修改负载均衡监听器绑定的后端机器的转发权重。批量修改的资源数量上限为500。本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。<br/>负载均衡的4层和7层监听器支持此接口，传统型负载均衡不支持。
    @inlinable @discardableResult
    public func batchModifyTargetWeight(_ input: BatchModifyTargetWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchModifyTargetWeightResponse> {
        self.client.execute(action: "BatchModifyTargetWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改监听器绑定的后端机器的转发权重
    ///
    /// BatchModifyTargetWeight 接口用于批量修改负载均衡监听器绑定的后端机器的转发权重。批量修改的资源数量上限为500。本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。<br/>负载均衡的4层和7层监听器支持此接口，传统型负载均衡不支持。
    @inlinable @discardableResult
    public func batchModifyTargetWeight(_ input: BatchModifyTargetWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyTargetWeightResponse {
        try await self.client.execute(action: "BatchModifyTargetWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改监听器绑定的后端机器的转发权重
    ///
    /// BatchModifyTargetWeight 接口用于批量修改负载均衡监听器绑定的后端机器的转发权重。批量修改的资源数量上限为500。本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。<br/>负载均衡的4层和7层监听器支持此接口，传统型负载均衡不支持。
    @inlinable @discardableResult
    public func batchModifyTargetWeight(loadBalancerId: String, modifyList: [RsWeightRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchModifyTargetWeightResponse> {
        let input = BatchModifyTargetWeightRequest(loadBalancerId: loadBalancerId, modifyList: modifyList)
        return self.client.execute(action: "BatchModifyTargetWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改监听器绑定的后端机器的转发权重
    ///
    /// BatchModifyTargetWeight 接口用于批量修改负载均衡监听器绑定的后端机器的转发权重。批量修改的资源数量上限为500。本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。<br/>负载均衡的4层和7层监听器支持此接口，传统型负载均衡不支持。
    @inlinable @discardableResult
    public func batchModifyTargetWeight(loadBalancerId: String, modifyList: [RsWeightRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyTargetWeightResponse {
        let input = BatchModifyTargetWeightRequest(loadBalancerId: loadBalancerId, modifyList: modifyList)
        return try await self.client.execute(action: "BatchModifyTargetWeight", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
