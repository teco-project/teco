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

extension Mps {
    /// 修改关键词样本
    ///
    /// 该接口用于修改关键词的应用场景、标签，关键词本身不可修改，如需修改，可删除重建。
    @inlinable
    public func modifyWordSample(_ input: ModifyWordSampleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyWordSampleResponse > {
        self.client.execute(action: "ModifyWordSample", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改关键词样本
    ///
    /// 该接口用于修改关键词的应用场景、标签，关键词本身不可修改，如需修改，可删除重建。
    @inlinable
    public func modifyWordSample(_ input: ModifyWordSampleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWordSampleResponse {
        try await self.client.execute(action: "ModifyWordSample", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyWordSample请求参数结构体
    public struct ModifyWordSampleRequest: TCRequestModel {
        /// 关键词，长度限制：128 个字符。
        public let keyword: String
        
        /// <b>关键词应用场景，可选值：</b>
        /// 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        /// 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        /// 3. Review.Ocr：通过光学字符识别技术，进行不适宜的内容识别；
        /// 4. Review.Asr：通过音频识别技术，进行不适宜的音频识别；
        /// <b>可合并简写为：</b>
        /// 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        /// 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜的内容识别，等价于 3+4；
        /// 7. All：包含以上全部，等价于 1+2+3+4。
        public let usages: [String]?
        
        /// 标签操作信息。
        public let tagOperationInfo: AiSampleTagOperation
        
        public init (keyword: String, usages: [String]?, tagOperationInfo: AiSampleTagOperation) {
            self.keyword = keyword
            self.usages = usages
            self.tagOperationInfo = tagOperationInfo
        }
        
        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
            case usages = "Usages"
            case tagOperationInfo = "TagOperationInfo"
        }
    }
    
    /// ModifyWordSample返回参数结构体
    public struct ModifyWordSampleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
