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

extension Tci {
    /// CreateVocab请求参数结构体
    public struct CreateVocabRequest: TCRequestModel {
        /// 要添加词汇的词汇库名
        public let vocabLibName: String
        
        /// 要添加的词汇列表
        public let vocabList: [String]
        
        public init (vocabLibName: String, vocabList: [String]) {
            self.vocabLibName = vocabLibName
            self.vocabList = vocabList
        }
        
        enum CodingKeys: String, CodingKey {
            case vocabLibName = "VocabLibName"
            case vocabList = "VocabList"
        }
    }
    
    /// CreateVocab返回参数结构体
    public struct CreateVocabResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 创建词汇
    @inlinable
    public func createVocab(_ input: CreateVocabRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVocabResponse > {
        self.client.execute(action: "CreateVocab", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建词汇
    @inlinable
    public func createVocab(_ input: CreateVocabRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVocabResponse {
        try await self.client.execute(action: "CreateVocab", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
