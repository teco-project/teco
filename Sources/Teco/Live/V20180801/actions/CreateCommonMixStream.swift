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

extension Live {
    /// 创建通用混流
    ///
    /// 该接口用来创建通用混流。用法与旧接口 mix_streamv2.start_mix_stream_advanced 基本一致。
    /// 注意：当前最多支持16路混流。
    /// 最佳实践：https://cloud.tencent.com/document/product/267/45566
    @inlinable
    public func createCommonMixStream(_ input: CreateCommonMixStreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCommonMixStreamResponse > {
        self.client.execute(action: "CreateCommonMixStream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建通用混流
    ///
    /// 该接口用来创建通用混流。用法与旧接口 mix_streamv2.start_mix_stream_advanced 基本一致。
    /// 注意：当前最多支持16路混流。
    /// 最佳实践：https://cloud.tencent.com/document/product/267/45566
    @inlinable
    public func createCommonMixStream(_ input: CreateCommonMixStreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCommonMixStreamResponse {
        try await self.client.execute(action: "CreateCommonMixStream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateCommonMixStream请求参数结构体
    public struct CreateCommonMixStreamRequest: TCRequestModel {
        /// 混流会话（申请混流开始到取消混流结束）标识 ID。80字节以内，仅含字母、数字以及下划线的字符串。
        public let mixStreamSessionId: String
        
        /// 混流输入流列表。
        public let inputStreamList: [CommonMixInputParam]
        
        /// 混流输出流参数。
        public let outputParams: CommonMixOutputParams
        
        /// 输入模板 ID，若设置该参数，将按默认模板布局输出，无需填入自定义位置参数。
        /// 不填默认为0。
        /// 两输入源支持10，20，30，40，50。
        /// 三输入源支持310，390，391。
        /// 四输入源支持410。
        /// 五输入源支持510，590。
        /// 六输入源支持610。
        public let mixStreamTemplateId: Int64?
        
        /// 混流的特殊控制参数。如无特殊需求，无需填写。
        public let controlParams: CommonMixControlParams
        
        public init (mixStreamSessionId: String, inputStreamList: [CommonMixInputParam], outputParams: CommonMixOutputParams, mixStreamTemplateId: Int64?, controlParams: CommonMixControlParams) {
            self.mixStreamSessionId = mixStreamSessionId
            self.inputStreamList = inputStreamList
            self.outputParams = outputParams
            self.mixStreamTemplateId = mixStreamTemplateId
            self.controlParams = controlParams
        }
        
        enum CodingKeys: String, CodingKey {
            case mixStreamSessionId = "MixStreamSessionId"
            case inputStreamList = "InputStreamList"
            case outputParams = "OutputParams"
            case mixStreamTemplateId = "MixStreamTemplateId"
            case controlParams = "ControlParams"
        }
    }
    
    /// CreateCommonMixStream返回参数结构体
    public struct CreateCommonMixStreamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
