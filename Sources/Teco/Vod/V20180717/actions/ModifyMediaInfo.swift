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
    /// 修改媒体文件属性
    ///
    /// 修改媒体文件的属性，包括分类、名称、描述、标签、过期时间、打点信息、视频封面、字幕信息等。
    @inlinable
    public func modifyMediaInfo(_ input: ModifyMediaInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMediaInfoResponse > {
        self.client.execute(action: "ModifyMediaInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改媒体文件属性
    ///
    /// 修改媒体文件的属性，包括分类、名称、描述、标签、过期时间、打点信息、视频封面、字幕信息等。
    @inlinable
    public func modifyMediaInfo(_ input: ModifyMediaInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMediaInfoResponse {
        try await self.client.execute(action: "ModifyMediaInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyMediaInfo请求参数结构体
    public struct ModifyMediaInfoRequest: TCRequestModel {
        /// 媒体文件唯一标识。
        public let fileId: String
        
        /// <b>点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        /// 媒体文件名称，最长 64 个字符。
        public let name: String?
        
        /// 媒体文件描述，最长 128 个字符。
        public let description: String?
        
        /// 媒体文件分类 ID。
        public let classId: Int64?
        
        /// 媒体文件过期时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。填“9999-12-31T23:59:59Z”表示永不过期。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。
        public let expireTime: String?
        
        /// 视频封面图片文件（如 jpeg, png 等）进行 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串，仅支持 gif、jpeg、png 三种图片格式。
        public let coverData: String?
        
        /// 新增的一组视频打点信息，如果某个偏移时间已存在打点，则会进行覆盖操作，单个媒体文件最多 100 个打点信息。同一个请求里，AddKeyFrameDescs 的时间偏移参数必须与 DeleteKeyFrameDescs 都不同。
        public let addKeyFrameDescs: [MediaKeyFrameDescItem]?
        
        /// 要删除的一组视频打点信息的时间偏移，单位：秒。同一个请求里，AddKeyFrameDescs 的时间偏移参数必须与 DeleteKeyFrameDescs 都不同。
        public let deleteKeyFrameDescs: [Float]?
        
        /// 取值 1 表示清空视频打点信息，其他值无意义。
        /// 同一个请求里，ClearKeyFrameDescs 与 AddKeyFrameDescs 不能同时出现。
        public let clearKeyFrameDescs: Int64?
        
        /// 新增的一组标签，单个媒体文件最多 16 个标签，单个标签最多 32 个字符。同一个请求里，AddTags 参数必须与 DeleteTags 都不同。
        public let addTags: [String]?
        
        /// 要删除的一组标签。同一个请求里，AddTags 参数必须与 DeleteTags 都不同。
        public let deleteTags: [String]?
        
        /// 取值 1 表示清空媒体文件所有标签，其他值无意义。
        /// 同一个请求里，ClearTags 与 AddTags 不能同时出现。
        public let clearTags: Int64?
        
        /// 新增一组字幕。单个媒体文件最多 16 个字幕。同一个请求中，AddSubtitles 中指定的字幕 Id 必须与 DeleteSubtitleIds 都不相同。
        public let addSubtitles: [MediaSubtitleInput]?
        
        /// 待删除字幕的唯一标识。同一个请求中，AddSubtitles 中指定的字幕 Id 必须与 DeleteSubtitleIds 都不相同。
        public let deleteSubtitleIds: [String]?
        
        /// 取值 1 表示清空媒体文件所有的字幕信息，其他值无意义。
        /// 同一个请求里，ClearSubtitles 与 AddSubtitles不能同时出现。
        public let clearSubtitles: Int64?
        
        public init (fileId: String, subAppId: UInt64?, name: String?, description: String?, classId: Int64?, expireTime: String?, coverData: String?, addKeyFrameDescs: [MediaKeyFrameDescItem]?, deleteKeyFrameDescs: [Float]?, clearKeyFrameDescs: Int64?, addTags: [String]?, deleteTags: [String]?, clearTags: Int64?, addSubtitles: [MediaSubtitleInput]?, deleteSubtitleIds: [String]?, clearSubtitles: Int64?) {
            self.fileId = fileId
            self.subAppId = subAppId
            self.name = name
            self.description = description
            self.classId = classId
            self.expireTime = expireTime
            self.coverData = coverData
            self.addKeyFrameDescs = addKeyFrameDescs
            self.deleteKeyFrameDescs = deleteKeyFrameDescs
            self.clearKeyFrameDescs = clearKeyFrameDescs
            self.addTags = addTags
            self.deleteTags = deleteTags
            self.clearTags = clearTags
            self.addSubtitles = addSubtitles
            self.deleteSubtitleIds = deleteSubtitleIds
            self.clearSubtitles = clearSubtitles
        }
        
        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case subAppId = "SubAppId"
            case name = "Name"
            case description = "Description"
            case classId = "ClassId"
            case expireTime = "ExpireTime"
            case coverData = "CoverData"
            case addKeyFrameDescs = "AddKeyFrameDescs"
            case deleteKeyFrameDescs = "DeleteKeyFrameDescs"
            case clearKeyFrameDescs = "ClearKeyFrameDescs"
            case addTags = "AddTags"
            case deleteTags = "DeleteTags"
            case clearTags = "ClearTags"
            case addSubtitles = "AddSubtitles"
            case deleteSubtitleIds = "DeleteSubtitleIds"
            case clearSubtitles = "ClearSubtitles"
        }
    }
    
    /// ModifyMediaInfo返回参数结构体
    public struct ModifyMediaInfoResponse: TCResponseModel {
        /// 新的视频封面 URL。
        /// * 注意：仅当请求携带 CoverData 时此返回值有效。 *
        public let coverUrl: String
        
        /// 新增的字幕信息。
        public let addedSubtitleSet: [MediaSubtitleItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case coverUrl = "CoverUrl"
            case addedSubtitleSet = "AddedSubtitleSet"
            case requestId = "RequestId"
        }
    }
}
