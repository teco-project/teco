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

extension Vod {
    /// AttachMediaSubtitles请求参数结构体
    public struct AttachMediaSubtitlesRequest: TCRequestModel {
        /// 媒体文件唯一标识。
        public let fileId: String
        
        /// 操作。取值如下：
        /// <li>Attach：关联字幕。</li>
        /// <li>Detach：解除关联字幕。</li>
        public let operation: String
        
        /// [转自适应码流模板号](https://cloud.tencent.com/document/product/266/34071#zsy)。
        public let adaptiveDynamicStreamingDefinition: UInt64
        
        /// 字幕的唯一标识。
        public let subtitleIds: [String]
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        public init (fileId: String, operation: String, adaptiveDynamicStreamingDefinition: UInt64, subtitleIds: [String], subAppId: UInt64? = nil) {
            self.fileId = fileId
            self.operation = operation
            self.adaptiveDynamicStreamingDefinition = adaptiveDynamicStreamingDefinition
            self.subtitleIds = subtitleIds
            self.subAppId = subAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case operation = "Operation"
            case adaptiveDynamicStreamingDefinition = "AdaptiveDynamicStreamingDefinition"
            case subtitleIds = "SubtitleIds"
            case subAppId = "SubAppId"
        }
    }
    
    /// AttachMediaSubtitles返回参数结构体
    public struct AttachMediaSubtitlesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 关联媒体字幕
    ///
    /// 关联媒资字幕，将指定的字幕关联到转自适应码流模板号对应的媒体输出文件中（或解除关联）。
    @inlinable
    public func attachMediaSubtitles(_ input: AttachMediaSubtitlesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AttachMediaSubtitlesResponse > {
        self.client.execute(action: "AttachMediaSubtitles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 关联媒体字幕
    ///
    /// 关联媒资字幕，将指定的字幕关联到转自适应码流模板号对应的媒体输出文件中（或解除关联）。
    @inlinable
    public func attachMediaSubtitles(_ input: AttachMediaSubtitlesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachMediaSubtitlesResponse {
        try await self.client.execute(action: "AttachMediaSubtitles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
