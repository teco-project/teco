//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cms {
    /// 删除文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 删除文本样本库，暂时只支持单个删除。
    @inlinable
    public func deleteTextSample(_ input: DeleteTextSampleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTextSampleResponse > {
        self.client.execute(action: "DeleteTextSample", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除文本样本库
    ///
    /// 本文档适用于文本内容安全、音频内容安全自定义识别库的管理。
    /// <br>
    /// 删除文本样本库，暂时只支持单个删除。
    @inlinable
    public func deleteTextSample(_ input: DeleteTextSampleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTextSampleResponse {
        try await self.client.execute(action: "DeleteTextSample", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteTextSample请求参数结构体
    public struct DeleteTextSampleRequest: TCRequestModel {
        /// 唯一标识数组，目前暂时只支持单个删除
        public let ids: [String]
        
        public init (ids: [String]) {
            self.ids = ids
        }
        
        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }
    
    /// DeleteTextSample返回参数结构体
    public struct DeleteTextSampleResponse: TCResponseModel {
        /// 任务状态
        /// 1：已完成
        /// 2：处理中
        public let progress: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case progress = "Progress"
            case requestId = "RequestId"
        }
    }
}