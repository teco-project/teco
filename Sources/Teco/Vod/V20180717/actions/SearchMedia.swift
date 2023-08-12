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
import TecoPaginationHelpers

extension Vod {
    /// SearchMedia请求参数结构体
    public struct SearchMediaRequest: TCPaginatedRequest {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 文件 ID 集合，匹配集合中的任意元素。
        /// <li>数组长度限制：10。</li>
        /// <li>单个 ID 长度限制：40个字符。</li>
        public let fileIds: [String]?

        /// 文件名集合，模糊匹配媒体文件的文件名，匹配度越高，排序越优先。
        /// <li>单个文件名长度限制：100个字符。</li>
        /// <li>数组长度限制：10。</li>
        public let names: [String]?

        /// 文件名前缀，前缀匹配媒体文件的文件名。
        /// <li>单个文件名前缀长度限制：100个字符。</li>
        /// <li>数组长度限制：10。</li>
        public let namePrefixes: [String]?

        /// 文件描述集合，模糊匹配媒体文件的描述，匹配度越高，排序越优先。
        /// <li>单个描述长度限制：100个字符。</li>
        /// <li>数组长度限制：10。</li>
        public let descriptions: [String]?

        /// 分类 ID 集合，匹配集合指定 ID 的分类及其所有子类。
        /// <li>数组长度限制：10。</li>
        public let classIds: [Int64]?

        /// 标签集合，匹配集合中任意元素。
        /// <li>单个标签长度限制：32个字符。</li>
        /// <li>数组长度限制：16。</li>
        public let tags: [String]?

        /// 文件类型。匹配集合中的任意元素：
        /// <li>Video: 视频文件</li>
        /// <li>Audio: 音频文件</li>
        /// <li>Image: 图片文件</li>
        public let categories: [String]?

        /// 媒体文件来源集合，来源取值参见 [SourceType](https://cloud.tencent.com/document/product/266/31773#MediaSourceData)。
        /// <li>数组长度限制：10。</li>
        public let sourceTypes: [String]?

        /// 推流直播码集合。匹配集合中的任意元素。
        /// <li>数组长度限制：10。</li>
        public let streamIds: [String]?

        /// 匹配创建时间在此时间段内的文件。
        /// <li>包含所指定的头尾时间点。</li>
        public let createTime: TimeRange?

        /// 匹配过期时间在此时间段内的文件，无法检索到已过期文件。
        /// <li>包含所指定的头尾时间点。</li>
        public let expireTime: TimeRange?

        /// 媒体文件存储地区，如 ap-chongqing，参见[地域列表](https://cloud.tencent.com/document/product/266/9760#.E5.B7.B2.E6.94.AF.E6.8C.81.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)。
        /// <li>单个存储地区长度限制：20个字符。</li>
        /// <li>数组长度限制：20。</li>
        public let storageRegions: [String]?

        /// 存储类型数组。可选值有：
        /// <li> STANDARD：标准存储。</li>
        /// <li> STANDARD_IA：低频存储。</li>
        /// <li> ARCHIVE：归档存储。</li>
        /// <li> DEEP_ARCHIVE：深度归档存储。</li>
        public let storageClasses: [String]?

        /// 媒体文件封装格式集合，匹配集合中任意元素。
        /// <li>数组长度限制：10。</li>
        public let mediaTypes: [String]?

        /// 媒体文件状态，匹配集合中任意元素。
        /// <li> Normal：正常；</li>
        /// <li> SystemForbidden：平台封禁；</li>
        /// <li> Forbidden：主动封禁。</li>
        public let status: [String]?

        /// 媒体文件审核结果，匹配集合中任意元素。
        /// <li> pass：审核通过；</li>
        /// <li> review：疑似违规，建议复审；</li>
        /// <li> block：确认违规，建议封禁；</li>
        /// <li> notModerated：未审核。</li>
        public let reviewResults: [String]?

        /// TRTC 应用 ID 集合。匹配集合中的任意元素。
        /// <li>数组长度限制：10。</li>
        public let trtcSdkAppIds: [UInt64]?

        /// TRTC 房间 ID 集合。匹配集合中的任意元素。
        /// <li>单个房间 ID 长度限制：64个字符；</li>
        /// <li>数组长度限制：10。</li>
        public let trtcRoomIds: [String]?

        /// 指定所有媒体文件需要返回的信息，可同时指定多个信息，N 从 0 开始递增。如果未填写该字段，默认返回所有信息。选项有：
        /// <li>basicInfo（视频基础信息）。</li>
        /// <li>metaData（视频元信息）。</li>
        /// <li>transcodeInfo（视频转码结果信息）。</li>
        /// <li>animatedGraphicsInfo（视频转动图结果信息）。</li>
        /// <li>imageSpriteInfo（视频雪碧图信息）。</li>
        /// <li>snapshotByTimeOffsetInfo（视频指定时间点截图信息）。</li>
        /// <li>sampleSnapshotInfo（采样截图信息）。</li>
        /// <li>keyFrameDescInfo（打点信息）。</li>
        /// <li>adaptiveDynamicStreamingInfo（转自适应码流信息）。</li>
        /// <li>miniProgramReviewInfo（小程序审核信息）。</li>
        public let filters: [String]?

        /// 排序方式。
        /// <li>Sort.Field 可选 CreateTime 。</li>
        /// <li>当 Text、 Names 或 Descriptions 不为空时，Sort.Field 字段无效， 搜索结果将以匹配度排序。</li>
        public let sort: SortBy?

        /// <div id="p_offset">分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        /// <li>取值范围：Offset + Limit 不超过5000。（参见：<a href="#maxResultsDesc">接口返回结果数限制</a>）</li></div>
        public let offset: UInt64?

        /// <div id="p_limit">分页返回的记录条数，默认值：10。将返回第 Offset 到第 Offset+Limit-1 条。
        /// <li>取值范围：Offset + Limit 不超过5000。（参见：<a href="#maxResultsDesc">接口返回结果数限制</a>）</li></div>
        public let limit: UInt64?

        /// （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）
        /// 搜索文本，模糊匹配媒体文件名称或描述信息，匹配项越多，匹配度越高，排序越优先。长度限制：64个字符。
        public let text: String?

        /// （不推荐：应使用 SourceTypes 替代）
        /// 媒体文件来源，来源取值参见 [SourceType](https://cloud.tencent.com/document/product/266/31773#MediaSourceData)。
        public let sourceType: String?

        /// （不推荐：应使用 StreamIds 替代）
        /// 推流直播码。
        public let streamId: String?

        /// （不推荐：应使用 CreateTime 替代）
        /// 创建时间的开始时间。
        /// <li>大于等于开始时间。</li>
        /// <li>当 CreateTime.After 也存在时，将优先使用 CreateTime.After。</li>
        /// <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。</li>
        public let startTime: String?

        /// （不推荐：应使用 CreateTime 替代）
        /// 创建时间的结束时间。
        /// <li>小于结束时间。</li>
        /// <li>当 CreateTime.Before 也存在时，将优先使用 CreateTime.Before。</li>
        /// <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。</li>
        public let endTime: String?

        /// 该字段已无效。
        public let vids: [String]?

        /// 该字段已无效。
        public let vid: String?

        public init(subAppId: UInt64? = nil, fileIds: [String]? = nil, names: [String]? = nil, namePrefixes: [String]? = nil, descriptions: [String]? = nil, classIds: [Int64]? = nil, tags: [String]? = nil, categories: [String]? = nil, sourceTypes: [String]? = nil, streamIds: [String]? = nil, createTime: TimeRange? = nil, expireTime: TimeRange? = nil, storageRegions: [String]? = nil, storageClasses: [String]? = nil, mediaTypes: [String]? = nil, status: [String]? = nil, reviewResults: [String]? = nil, trtcSdkAppIds: [UInt64]? = nil, trtcRoomIds: [String]? = nil, filters: [String]? = nil, sort: SortBy? = nil, offset: UInt64? = nil, limit: UInt64? = nil, text: String? = nil, sourceType: String? = nil, streamId: String? = nil, startTime: String? = nil, endTime: String? = nil, vids: [String]? = nil, vid: String? = nil) {
            self.subAppId = subAppId
            self.fileIds = fileIds
            self.names = names
            self.namePrefixes = namePrefixes
            self.descriptions = descriptions
            self.classIds = classIds
            self.tags = tags
            self.categories = categories
            self.sourceTypes = sourceTypes
            self.streamIds = streamIds
            self.createTime = createTime
            self.expireTime = expireTime
            self.storageRegions = storageRegions
            self.storageClasses = storageClasses
            self.mediaTypes = mediaTypes
            self.status = status
            self.reviewResults = reviewResults
            self.trtcSdkAppIds = trtcSdkAppIds
            self.trtcRoomIds = trtcRoomIds
            self.filters = filters
            self.sort = sort
            self.offset = offset
            self.limit = limit
            self.text = text
            self.sourceType = sourceType
            self.streamId = streamId
            self.startTime = startTime
            self.endTime = endTime
            self.vids = vids
            self.vid = vid
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case fileIds = "FileIds"
            case names = "Names"
            case namePrefixes = "NamePrefixes"
            case descriptions = "Descriptions"
            case classIds = "ClassIds"
            case tags = "Tags"
            case categories = "Categories"
            case sourceTypes = "SourceTypes"
            case streamIds = "StreamIds"
            case createTime = "CreateTime"
            case expireTime = "ExpireTime"
            case storageRegions = "StorageRegions"
            case storageClasses = "StorageClasses"
            case mediaTypes = "MediaTypes"
            case status = "Status"
            case reviewResults = "ReviewResults"
            case trtcSdkAppIds = "TrtcSdkAppIds"
            case trtcRoomIds = "TrtcRoomIds"
            case filters = "Filters"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
            case text = "Text"
            case sourceType = "SourceType"
            case streamId = "StreamId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case vids = "Vids"
            case vid = "Vid"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SearchMediaResponse) -> SearchMediaRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return SearchMediaRequest(subAppId: self.subAppId, fileIds: self.fileIds, names: self.names, namePrefixes: self.namePrefixes, descriptions: self.descriptions, classIds: self.classIds, tags: self.tags, categories: self.categories, sourceTypes: self.sourceTypes, streamIds: self.streamIds, createTime: self.createTime, expireTime: self.expireTime, storageRegions: self.storageRegions, storageClasses: self.storageClasses, mediaTypes: self.mediaTypes, status: self.status, reviewResults: self.reviewResults, trtcSdkAppIds: self.trtcSdkAppIds, trtcRoomIds: self.trtcRoomIds, filters: self.filters, sort: self.sort, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, text: self.text, sourceType: self.sourceType, streamId: self.streamId, startTime: self.startTime, endTime: self.endTime, vids: self.vids, vid: self.vid)
        }
    }

    /// SearchMedia返回参数结构体
    public struct SearchMediaResponse: TCPaginatedResponse {
        /// 符合搜索条件的记录总数。
        /// <li>最大值：5000。当命中记录数超过5000时，该字段将返回 5000，而非实际命中总数。</li>
        public let totalCount: UInt64

        /// 媒体文件信息列表。
        public let mediaInfoSet: [MediaInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case mediaInfoSet = "MediaInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MediaInfo`` list from the paginated response.
        public func getItems() -> [MediaInfo] {
            self.mediaInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 搜索媒体信息
    ///
    /// 搜索媒体信息，支持多种条件筛选，以及支持对返回结果排序、过滤等功能，具体包括：
    /// - 指定文件 ID 集合 FileIds ，返回匹配集合中任意 ID 的媒体。
    /// - 根据多个媒体文件名 Names 或描述信息 Descriptions 进行模糊搜索。
    /// - 根据多个文件名前缀 NamePrefixes 进行搜索。
    /// - 指定分类集合 ClassIds（见输入参数），返回满足集合中任意分类的媒体。例如：媒体分类有电影、电视剧、综艺等，其中电影分类下又有子分类历史片、动作片、言情片。如果 ClassIds 指定了电影、电视剧，那么电影和电视剧下的所有子分类都会返回；而如果 ClassIds 指定的是历史片、动作片，那么只有这2个子分类下的媒体才会返回。
    /// - 指定标签集合 Tags（见输入参数），返回满足集合中任意标签的媒体。例如：媒体标签有二次元、宫斗、鬼畜，如果 Tags 指定了二次元、鬼畜2个标签，那么只要符合这2个标签中任意一个的媒体都会被检索出来。
    /// - 指定文件类型集合 Categories（见输入参数），返回满足集合中任意类型的媒体。例如：文件类型有 Video（视频）、 Audio （音频）、 Image （图片）。如果Categories指定了 Video 和 Audio 2个文件类型，那么符合这些类型的媒体都会被检索出来。
    /// - 指定来源集合 SourceTypes（见输入参数），返回满足集合中任意来源的媒体。例如：媒体来源有 Record (直播录制)、Upload （上传）等。如果 SourceTypes 指定了 Record 和 Upload ，那么符合这些来源的媒体都会被检索出来。
    /// - 指定文件封装格式集合 MediaTypes（见输入参数），返回满足集合中任意封装格式的媒体。例如：封装格式有 MP4、AVI、MP3 等。如果 MediaTypes 指定了 MP4 和 MP3，那么符合这些封装格式的媒体都会被检索出来。
    /// - 指定文件状态集合 Status（见输入参数），返回满足集合中任意状态的媒体。例如：文件状态有 Normal（正常）、SystemForbidden（平台封禁）、Forbidden（主动封禁）。如果 Status 指定了 Normal 和 Forbidden 2种文件状态，那么符合这些状态的媒体都会被检索出来。
    /// - 指定文件审核结果集合 ReviewResults（见输入参数），返回满足集合中任意状态的媒体。例如：文件审核结果有 pass（通过）、block（违规）等。如果 ReviewResults 指定了 pass 和 block 2种审核结果，那么符合这些审核结果的媒体都会被检索出来。
    /// - 指定直播推流码集合 StreamIds（见输入参数）筛选直播录制的媒体。
    /// - 指定媒体的创建时间范围筛选媒体。
    /// - 指定 TRTC 应用 ID 集合筛选媒体。
    /// - 指定 TRTC 房间 ID 集合筛选媒体。
    ///
    /// - 以上参数之间可以任意组合进行检索。例如：筛选创建时间在2018年12月1日12:00:00到2018年12月8日12:00:00之间、分类为电影或电视剧、带有宫斗和悬疑标签的媒体。注意，任何支持数组输入的参数，其元素之间的搜索逻辑为‘或’。所有参数之间的逻辑关系为‘与’。
    ///
    /// - 允许通过 Filters 控制返回的媒体信息种类（默认返回所有信息）。可选输入包括：
    ///     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
    ///     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
    ///     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
    ///     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
    ///     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
    ///     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
    ///     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
    ///     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
    ///     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。
    ///
    /// - 允许对结果根据创建时间进行排序并分页返回，通过 Offset 和 Limit （见输入参数）来控制分页。
    ///
    /// <div id="maxResultsDesc">接口返回结果数限制：</div>
    /// - <b><a href="#p_offset">Offset</a> 和 <a href="#p_limit">Limit</a> 两个参数影响单次分页查询结果数。特别注意：当这2个值都缺省时，本接口最多只返回10条查询结果。</b>
    /// - <b>最大支持返回5000条搜索结果，超出部分不再支持查询。如果搜索结果量太大，建议使用更精细的筛选条件来减少搜索结果。</b>
    ///
    /// <br>不推荐使用的条件筛选：
    /// - （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）指定单个文本 Text 对媒体文件名或描述信息进行模糊搜索。
    /// - （不推荐：应使用 SourceTypes 替代）指定单个媒体文件来源 SourceType 进行搜索。
    /// - （不推荐：应使用 StreamIds 替代）指定单个推流直播码 StreamId 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个起始创建时间 StartTime 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个结尾创建时间 EndTime 进行搜索。
    @inlinable
    public func searchMedia(_ input: SearchMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchMediaResponse> {
        self.client.execute(action: "SearchMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索媒体信息
    ///
    /// 搜索媒体信息，支持多种条件筛选，以及支持对返回结果排序、过滤等功能，具体包括：
    /// - 指定文件 ID 集合 FileIds ，返回匹配集合中任意 ID 的媒体。
    /// - 根据多个媒体文件名 Names 或描述信息 Descriptions 进行模糊搜索。
    /// - 根据多个文件名前缀 NamePrefixes 进行搜索。
    /// - 指定分类集合 ClassIds（见输入参数），返回满足集合中任意分类的媒体。例如：媒体分类有电影、电视剧、综艺等，其中电影分类下又有子分类历史片、动作片、言情片。如果 ClassIds 指定了电影、电视剧，那么电影和电视剧下的所有子分类都会返回；而如果 ClassIds 指定的是历史片、动作片，那么只有这2个子分类下的媒体才会返回。
    /// - 指定标签集合 Tags（见输入参数），返回满足集合中任意标签的媒体。例如：媒体标签有二次元、宫斗、鬼畜，如果 Tags 指定了二次元、鬼畜2个标签，那么只要符合这2个标签中任意一个的媒体都会被检索出来。
    /// - 指定文件类型集合 Categories（见输入参数），返回满足集合中任意类型的媒体。例如：文件类型有 Video（视频）、 Audio （音频）、 Image （图片）。如果Categories指定了 Video 和 Audio 2个文件类型，那么符合这些类型的媒体都会被检索出来。
    /// - 指定来源集合 SourceTypes（见输入参数），返回满足集合中任意来源的媒体。例如：媒体来源有 Record (直播录制)、Upload （上传）等。如果 SourceTypes 指定了 Record 和 Upload ，那么符合这些来源的媒体都会被检索出来。
    /// - 指定文件封装格式集合 MediaTypes（见输入参数），返回满足集合中任意封装格式的媒体。例如：封装格式有 MP4、AVI、MP3 等。如果 MediaTypes 指定了 MP4 和 MP3，那么符合这些封装格式的媒体都会被检索出来。
    /// - 指定文件状态集合 Status（见输入参数），返回满足集合中任意状态的媒体。例如：文件状态有 Normal（正常）、SystemForbidden（平台封禁）、Forbidden（主动封禁）。如果 Status 指定了 Normal 和 Forbidden 2种文件状态，那么符合这些状态的媒体都会被检索出来。
    /// - 指定文件审核结果集合 ReviewResults（见输入参数），返回满足集合中任意状态的媒体。例如：文件审核结果有 pass（通过）、block（违规）等。如果 ReviewResults 指定了 pass 和 block 2种审核结果，那么符合这些审核结果的媒体都会被检索出来。
    /// - 指定直播推流码集合 StreamIds（见输入参数）筛选直播录制的媒体。
    /// - 指定媒体的创建时间范围筛选媒体。
    /// - 指定 TRTC 应用 ID 集合筛选媒体。
    /// - 指定 TRTC 房间 ID 集合筛选媒体。
    ///
    /// - 以上参数之间可以任意组合进行检索。例如：筛选创建时间在2018年12月1日12:00:00到2018年12月8日12:00:00之间、分类为电影或电视剧、带有宫斗和悬疑标签的媒体。注意，任何支持数组输入的参数，其元素之间的搜索逻辑为‘或’。所有参数之间的逻辑关系为‘与’。
    ///
    /// - 允许通过 Filters 控制返回的媒体信息种类（默认返回所有信息）。可选输入包括：
    ///     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
    ///     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
    ///     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
    ///     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
    ///     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
    ///     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
    ///     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
    ///     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
    ///     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。
    ///
    /// - 允许对结果根据创建时间进行排序并分页返回，通过 Offset 和 Limit （见输入参数）来控制分页。
    ///
    /// <div id="maxResultsDesc">接口返回结果数限制：</div>
    /// - <b><a href="#p_offset">Offset</a> 和 <a href="#p_limit">Limit</a> 两个参数影响单次分页查询结果数。特别注意：当这2个值都缺省时，本接口最多只返回10条查询结果。</b>
    /// - <b>最大支持返回5000条搜索结果，超出部分不再支持查询。如果搜索结果量太大，建议使用更精细的筛选条件来减少搜索结果。</b>
    ///
    /// <br>不推荐使用的条件筛选：
    /// - （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）指定单个文本 Text 对媒体文件名或描述信息进行模糊搜索。
    /// - （不推荐：应使用 SourceTypes 替代）指定单个媒体文件来源 SourceType 进行搜索。
    /// - （不推荐：应使用 StreamIds 替代）指定单个推流直播码 StreamId 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个起始创建时间 StartTime 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个结尾创建时间 EndTime 进行搜索。
    @inlinable
    public func searchMedia(_ input: SearchMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchMediaResponse {
        try await self.client.execute(action: "SearchMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索媒体信息
    ///
    /// 搜索媒体信息，支持多种条件筛选，以及支持对返回结果排序、过滤等功能，具体包括：
    /// - 指定文件 ID 集合 FileIds ，返回匹配集合中任意 ID 的媒体。
    /// - 根据多个媒体文件名 Names 或描述信息 Descriptions 进行模糊搜索。
    /// - 根据多个文件名前缀 NamePrefixes 进行搜索。
    /// - 指定分类集合 ClassIds（见输入参数），返回满足集合中任意分类的媒体。例如：媒体分类有电影、电视剧、综艺等，其中电影分类下又有子分类历史片、动作片、言情片。如果 ClassIds 指定了电影、电视剧，那么电影和电视剧下的所有子分类都会返回；而如果 ClassIds 指定的是历史片、动作片，那么只有这2个子分类下的媒体才会返回。
    /// - 指定标签集合 Tags（见输入参数），返回满足集合中任意标签的媒体。例如：媒体标签有二次元、宫斗、鬼畜，如果 Tags 指定了二次元、鬼畜2个标签，那么只要符合这2个标签中任意一个的媒体都会被检索出来。
    /// - 指定文件类型集合 Categories（见输入参数），返回满足集合中任意类型的媒体。例如：文件类型有 Video（视频）、 Audio （音频）、 Image （图片）。如果Categories指定了 Video 和 Audio 2个文件类型，那么符合这些类型的媒体都会被检索出来。
    /// - 指定来源集合 SourceTypes（见输入参数），返回满足集合中任意来源的媒体。例如：媒体来源有 Record (直播录制)、Upload （上传）等。如果 SourceTypes 指定了 Record 和 Upload ，那么符合这些来源的媒体都会被检索出来。
    /// - 指定文件封装格式集合 MediaTypes（见输入参数），返回满足集合中任意封装格式的媒体。例如：封装格式有 MP4、AVI、MP3 等。如果 MediaTypes 指定了 MP4 和 MP3，那么符合这些封装格式的媒体都会被检索出来。
    /// - 指定文件状态集合 Status（见输入参数），返回满足集合中任意状态的媒体。例如：文件状态有 Normal（正常）、SystemForbidden（平台封禁）、Forbidden（主动封禁）。如果 Status 指定了 Normal 和 Forbidden 2种文件状态，那么符合这些状态的媒体都会被检索出来。
    /// - 指定文件审核结果集合 ReviewResults（见输入参数），返回满足集合中任意状态的媒体。例如：文件审核结果有 pass（通过）、block（违规）等。如果 ReviewResults 指定了 pass 和 block 2种审核结果，那么符合这些审核结果的媒体都会被检索出来。
    /// - 指定直播推流码集合 StreamIds（见输入参数）筛选直播录制的媒体。
    /// - 指定媒体的创建时间范围筛选媒体。
    /// - 指定 TRTC 应用 ID 集合筛选媒体。
    /// - 指定 TRTC 房间 ID 集合筛选媒体。
    ///
    /// - 以上参数之间可以任意组合进行检索。例如：筛选创建时间在2018年12月1日12:00:00到2018年12月8日12:00:00之间、分类为电影或电视剧、带有宫斗和悬疑标签的媒体。注意，任何支持数组输入的参数，其元素之间的搜索逻辑为‘或’。所有参数之间的逻辑关系为‘与’。
    ///
    /// - 允许通过 Filters 控制返回的媒体信息种类（默认返回所有信息）。可选输入包括：
    ///     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
    ///     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
    ///     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
    ///     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
    ///     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
    ///     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
    ///     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
    ///     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
    ///     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。
    ///
    /// - 允许对结果根据创建时间进行排序并分页返回，通过 Offset 和 Limit （见输入参数）来控制分页。
    ///
    /// <div id="maxResultsDesc">接口返回结果数限制：</div>
    /// - <b><a href="#p_offset">Offset</a> 和 <a href="#p_limit">Limit</a> 两个参数影响单次分页查询结果数。特别注意：当这2个值都缺省时，本接口最多只返回10条查询结果。</b>
    /// - <b>最大支持返回5000条搜索结果，超出部分不再支持查询。如果搜索结果量太大，建议使用更精细的筛选条件来减少搜索结果。</b>
    ///
    /// <br>不推荐使用的条件筛选：
    /// - （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）指定单个文本 Text 对媒体文件名或描述信息进行模糊搜索。
    /// - （不推荐：应使用 SourceTypes 替代）指定单个媒体文件来源 SourceType 进行搜索。
    /// - （不推荐：应使用 StreamIds 替代）指定单个推流直播码 StreamId 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个起始创建时间 StartTime 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个结尾创建时间 EndTime 进行搜索。
    @inlinable
    public func searchMedia(subAppId: UInt64? = nil, fileIds: [String]? = nil, names: [String]? = nil, namePrefixes: [String]? = nil, descriptions: [String]? = nil, classIds: [Int64]? = nil, tags: [String]? = nil, categories: [String]? = nil, sourceTypes: [String]? = nil, streamIds: [String]? = nil, createTime: TimeRange? = nil, expireTime: TimeRange? = nil, storageRegions: [String]? = nil, storageClasses: [String]? = nil, mediaTypes: [String]? = nil, status: [String]? = nil, reviewResults: [String]? = nil, trtcSdkAppIds: [UInt64]? = nil, trtcRoomIds: [String]? = nil, filters: [String]? = nil, sort: SortBy? = nil, offset: UInt64? = nil, limit: UInt64? = nil, text: String? = nil, sourceType: String? = nil, streamId: String? = nil, startTime: String? = nil, endTime: String? = nil, vids: [String]? = nil, vid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchMediaResponse> {
        self.searchMedia(.init(subAppId: subAppId, fileIds: fileIds, names: names, namePrefixes: namePrefixes, descriptions: descriptions, classIds: classIds, tags: tags, categories: categories, sourceTypes: sourceTypes, streamIds: streamIds, createTime: createTime, expireTime: expireTime, storageRegions: storageRegions, storageClasses: storageClasses, mediaTypes: mediaTypes, status: status, reviewResults: reviewResults, trtcSdkAppIds: trtcSdkAppIds, trtcRoomIds: trtcRoomIds, filters: filters, sort: sort, offset: offset, limit: limit, text: text, sourceType: sourceType, streamId: streamId, startTime: startTime, endTime: endTime, vids: vids, vid: vid), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索媒体信息
    ///
    /// 搜索媒体信息，支持多种条件筛选，以及支持对返回结果排序、过滤等功能，具体包括：
    /// - 指定文件 ID 集合 FileIds ，返回匹配集合中任意 ID 的媒体。
    /// - 根据多个媒体文件名 Names 或描述信息 Descriptions 进行模糊搜索。
    /// - 根据多个文件名前缀 NamePrefixes 进行搜索。
    /// - 指定分类集合 ClassIds（见输入参数），返回满足集合中任意分类的媒体。例如：媒体分类有电影、电视剧、综艺等，其中电影分类下又有子分类历史片、动作片、言情片。如果 ClassIds 指定了电影、电视剧，那么电影和电视剧下的所有子分类都会返回；而如果 ClassIds 指定的是历史片、动作片，那么只有这2个子分类下的媒体才会返回。
    /// - 指定标签集合 Tags（见输入参数），返回满足集合中任意标签的媒体。例如：媒体标签有二次元、宫斗、鬼畜，如果 Tags 指定了二次元、鬼畜2个标签，那么只要符合这2个标签中任意一个的媒体都会被检索出来。
    /// - 指定文件类型集合 Categories（见输入参数），返回满足集合中任意类型的媒体。例如：文件类型有 Video（视频）、 Audio （音频）、 Image （图片）。如果Categories指定了 Video 和 Audio 2个文件类型，那么符合这些类型的媒体都会被检索出来。
    /// - 指定来源集合 SourceTypes（见输入参数），返回满足集合中任意来源的媒体。例如：媒体来源有 Record (直播录制)、Upload （上传）等。如果 SourceTypes 指定了 Record 和 Upload ，那么符合这些来源的媒体都会被检索出来。
    /// - 指定文件封装格式集合 MediaTypes（见输入参数），返回满足集合中任意封装格式的媒体。例如：封装格式有 MP4、AVI、MP3 等。如果 MediaTypes 指定了 MP4 和 MP3，那么符合这些封装格式的媒体都会被检索出来。
    /// - 指定文件状态集合 Status（见输入参数），返回满足集合中任意状态的媒体。例如：文件状态有 Normal（正常）、SystemForbidden（平台封禁）、Forbidden（主动封禁）。如果 Status 指定了 Normal 和 Forbidden 2种文件状态，那么符合这些状态的媒体都会被检索出来。
    /// - 指定文件审核结果集合 ReviewResults（见输入参数），返回满足集合中任意状态的媒体。例如：文件审核结果有 pass（通过）、block（违规）等。如果 ReviewResults 指定了 pass 和 block 2种审核结果，那么符合这些审核结果的媒体都会被检索出来。
    /// - 指定直播推流码集合 StreamIds（见输入参数）筛选直播录制的媒体。
    /// - 指定媒体的创建时间范围筛选媒体。
    /// - 指定 TRTC 应用 ID 集合筛选媒体。
    /// - 指定 TRTC 房间 ID 集合筛选媒体。
    ///
    /// - 以上参数之间可以任意组合进行检索。例如：筛选创建时间在2018年12月1日12:00:00到2018年12月8日12:00:00之间、分类为电影或电视剧、带有宫斗和悬疑标签的媒体。注意，任何支持数组输入的参数，其元素之间的搜索逻辑为‘或’。所有参数之间的逻辑关系为‘与’。
    ///
    /// - 允许通过 Filters 控制返回的媒体信息种类（默认返回所有信息）。可选输入包括：
    ///     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
    ///     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
    ///     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
    ///     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
    ///     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
    ///     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
    ///     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
    ///     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
    ///     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。
    ///
    /// - 允许对结果根据创建时间进行排序并分页返回，通过 Offset 和 Limit （见输入参数）来控制分页。
    ///
    /// <div id="maxResultsDesc">接口返回结果数限制：</div>
    /// - <b><a href="#p_offset">Offset</a> 和 <a href="#p_limit">Limit</a> 两个参数影响单次分页查询结果数。特别注意：当这2个值都缺省时，本接口最多只返回10条查询结果。</b>
    /// - <b>最大支持返回5000条搜索结果，超出部分不再支持查询。如果搜索结果量太大，建议使用更精细的筛选条件来减少搜索结果。</b>
    ///
    /// <br>不推荐使用的条件筛选：
    /// - （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）指定单个文本 Text 对媒体文件名或描述信息进行模糊搜索。
    /// - （不推荐：应使用 SourceTypes 替代）指定单个媒体文件来源 SourceType 进行搜索。
    /// - （不推荐：应使用 StreamIds 替代）指定单个推流直播码 StreamId 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个起始创建时间 StartTime 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个结尾创建时间 EndTime 进行搜索。
    @inlinable
    public func searchMedia(subAppId: UInt64? = nil, fileIds: [String]? = nil, names: [String]? = nil, namePrefixes: [String]? = nil, descriptions: [String]? = nil, classIds: [Int64]? = nil, tags: [String]? = nil, categories: [String]? = nil, sourceTypes: [String]? = nil, streamIds: [String]? = nil, createTime: TimeRange? = nil, expireTime: TimeRange? = nil, storageRegions: [String]? = nil, storageClasses: [String]? = nil, mediaTypes: [String]? = nil, status: [String]? = nil, reviewResults: [String]? = nil, trtcSdkAppIds: [UInt64]? = nil, trtcRoomIds: [String]? = nil, filters: [String]? = nil, sort: SortBy? = nil, offset: UInt64? = nil, limit: UInt64? = nil, text: String? = nil, sourceType: String? = nil, streamId: String? = nil, startTime: String? = nil, endTime: String? = nil, vids: [String]? = nil, vid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchMediaResponse {
        try await self.searchMedia(.init(subAppId: subAppId, fileIds: fileIds, names: names, namePrefixes: namePrefixes, descriptions: descriptions, classIds: classIds, tags: tags, categories: categories, sourceTypes: sourceTypes, streamIds: streamIds, createTime: createTime, expireTime: expireTime, storageRegions: storageRegions, storageClasses: storageClasses, mediaTypes: mediaTypes, status: status, reviewResults: reviewResults, trtcSdkAppIds: trtcSdkAppIds, trtcRoomIds: trtcRoomIds, filters: filters, sort: sort, offset: offset, limit: limit, text: text, sourceType: sourceType, streamId: streamId, startTime: startTime, endTime: endTime, vids: vids, vid: vid), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索媒体信息
    ///
    /// 搜索媒体信息，支持多种条件筛选，以及支持对返回结果排序、过滤等功能，具体包括：
    /// - 指定文件 ID 集合 FileIds ，返回匹配集合中任意 ID 的媒体。
    /// - 根据多个媒体文件名 Names 或描述信息 Descriptions 进行模糊搜索。
    /// - 根据多个文件名前缀 NamePrefixes 进行搜索。
    /// - 指定分类集合 ClassIds（见输入参数），返回满足集合中任意分类的媒体。例如：媒体分类有电影、电视剧、综艺等，其中电影分类下又有子分类历史片、动作片、言情片。如果 ClassIds 指定了电影、电视剧，那么电影和电视剧下的所有子分类都会返回；而如果 ClassIds 指定的是历史片、动作片，那么只有这2个子分类下的媒体才会返回。
    /// - 指定标签集合 Tags（见输入参数），返回满足集合中任意标签的媒体。例如：媒体标签有二次元、宫斗、鬼畜，如果 Tags 指定了二次元、鬼畜2个标签，那么只要符合这2个标签中任意一个的媒体都会被检索出来。
    /// - 指定文件类型集合 Categories（见输入参数），返回满足集合中任意类型的媒体。例如：文件类型有 Video（视频）、 Audio （音频）、 Image （图片）。如果Categories指定了 Video 和 Audio 2个文件类型，那么符合这些类型的媒体都会被检索出来。
    /// - 指定来源集合 SourceTypes（见输入参数），返回满足集合中任意来源的媒体。例如：媒体来源有 Record (直播录制)、Upload （上传）等。如果 SourceTypes 指定了 Record 和 Upload ，那么符合这些来源的媒体都会被检索出来。
    /// - 指定文件封装格式集合 MediaTypes（见输入参数），返回满足集合中任意封装格式的媒体。例如：封装格式有 MP4、AVI、MP3 等。如果 MediaTypes 指定了 MP4 和 MP3，那么符合这些封装格式的媒体都会被检索出来。
    /// - 指定文件状态集合 Status（见输入参数），返回满足集合中任意状态的媒体。例如：文件状态有 Normal（正常）、SystemForbidden（平台封禁）、Forbidden（主动封禁）。如果 Status 指定了 Normal 和 Forbidden 2种文件状态，那么符合这些状态的媒体都会被检索出来。
    /// - 指定文件审核结果集合 ReviewResults（见输入参数），返回满足集合中任意状态的媒体。例如：文件审核结果有 pass（通过）、block（违规）等。如果 ReviewResults 指定了 pass 和 block 2种审核结果，那么符合这些审核结果的媒体都会被检索出来。
    /// - 指定直播推流码集合 StreamIds（见输入参数）筛选直播录制的媒体。
    /// - 指定媒体的创建时间范围筛选媒体。
    /// - 指定 TRTC 应用 ID 集合筛选媒体。
    /// - 指定 TRTC 房间 ID 集合筛选媒体。
    ///
    /// - 以上参数之间可以任意组合进行检索。例如：筛选创建时间在2018年12月1日12:00:00到2018年12月8日12:00:00之间、分类为电影或电视剧、带有宫斗和悬疑标签的媒体。注意，任何支持数组输入的参数，其元素之间的搜索逻辑为‘或’。所有参数之间的逻辑关系为‘与’。
    ///
    /// - 允许通过 Filters 控制返回的媒体信息种类（默认返回所有信息）。可选输入包括：
    ///     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
    ///     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
    ///     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
    ///     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
    ///     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
    ///     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
    ///     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
    ///     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
    ///     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。
    ///
    /// - 允许对结果根据创建时间进行排序并分页返回，通过 Offset 和 Limit （见输入参数）来控制分页。
    ///
    /// <div id="maxResultsDesc">接口返回结果数限制：</div>
    /// - <b><a href="#p_offset">Offset</a> 和 <a href="#p_limit">Limit</a> 两个参数影响单次分页查询结果数。特别注意：当这2个值都缺省时，本接口最多只返回10条查询结果。</b>
    /// - <b>最大支持返回5000条搜索结果，超出部分不再支持查询。如果搜索结果量太大，建议使用更精细的筛选条件来减少搜索结果。</b>
    ///
    /// <br>不推荐使用的条件筛选：
    /// - （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）指定单个文本 Text 对媒体文件名或描述信息进行模糊搜索。
    /// - （不推荐：应使用 SourceTypes 替代）指定单个媒体文件来源 SourceType 进行搜索。
    /// - （不推荐：应使用 StreamIds 替代）指定单个推流直播码 StreamId 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个起始创建时间 StartTime 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个结尾创建时间 EndTime 进行搜索。
    @inlinable
    public func searchMediaPaginated(_ input: SearchMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [MediaInfo])> {
        self.client.paginate(input: input, region: region, command: self.searchMedia, logger: logger, on: eventLoop)
    }

    /// 搜索媒体信息
    ///
    /// 搜索媒体信息，支持多种条件筛选，以及支持对返回结果排序、过滤等功能，具体包括：
    /// - 指定文件 ID 集合 FileIds ，返回匹配集合中任意 ID 的媒体。
    /// - 根据多个媒体文件名 Names 或描述信息 Descriptions 进行模糊搜索。
    /// - 根据多个文件名前缀 NamePrefixes 进行搜索。
    /// - 指定分类集合 ClassIds（见输入参数），返回满足集合中任意分类的媒体。例如：媒体分类有电影、电视剧、综艺等，其中电影分类下又有子分类历史片、动作片、言情片。如果 ClassIds 指定了电影、电视剧，那么电影和电视剧下的所有子分类都会返回；而如果 ClassIds 指定的是历史片、动作片，那么只有这2个子分类下的媒体才会返回。
    /// - 指定标签集合 Tags（见输入参数），返回满足集合中任意标签的媒体。例如：媒体标签有二次元、宫斗、鬼畜，如果 Tags 指定了二次元、鬼畜2个标签，那么只要符合这2个标签中任意一个的媒体都会被检索出来。
    /// - 指定文件类型集合 Categories（见输入参数），返回满足集合中任意类型的媒体。例如：文件类型有 Video（视频）、 Audio （音频）、 Image （图片）。如果Categories指定了 Video 和 Audio 2个文件类型，那么符合这些类型的媒体都会被检索出来。
    /// - 指定来源集合 SourceTypes（见输入参数），返回满足集合中任意来源的媒体。例如：媒体来源有 Record (直播录制)、Upload （上传）等。如果 SourceTypes 指定了 Record 和 Upload ，那么符合这些来源的媒体都会被检索出来。
    /// - 指定文件封装格式集合 MediaTypes（见输入参数），返回满足集合中任意封装格式的媒体。例如：封装格式有 MP4、AVI、MP3 等。如果 MediaTypes 指定了 MP4 和 MP3，那么符合这些封装格式的媒体都会被检索出来。
    /// - 指定文件状态集合 Status（见输入参数），返回满足集合中任意状态的媒体。例如：文件状态有 Normal（正常）、SystemForbidden（平台封禁）、Forbidden（主动封禁）。如果 Status 指定了 Normal 和 Forbidden 2种文件状态，那么符合这些状态的媒体都会被检索出来。
    /// - 指定文件审核结果集合 ReviewResults（见输入参数），返回满足集合中任意状态的媒体。例如：文件审核结果有 pass（通过）、block（违规）等。如果 ReviewResults 指定了 pass 和 block 2种审核结果，那么符合这些审核结果的媒体都会被检索出来。
    /// - 指定直播推流码集合 StreamIds（见输入参数）筛选直播录制的媒体。
    /// - 指定媒体的创建时间范围筛选媒体。
    /// - 指定 TRTC 应用 ID 集合筛选媒体。
    /// - 指定 TRTC 房间 ID 集合筛选媒体。
    ///
    /// - 以上参数之间可以任意组合进行检索。例如：筛选创建时间在2018年12月1日12:00:00到2018年12月8日12:00:00之间、分类为电影或电视剧、带有宫斗和悬疑标签的媒体。注意，任何支持数组输入的参数，其元素之间的搜索逻辑为‘或’。所有参数之间的逻辑关系为‘与’。
    ///
    /// - 允许通过 Filters 控制返回的媒体信息种类（默认返回所有信息）。可选输入包括：
    ///     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
    ///     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
    ///     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
    ///     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
    ///     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
    ///     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
    ///     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
    ///     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
    ///     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。
    ///
    /// - 允许对结果根据创建时间进行排序并分页返回，通过 Offset 和 Limit （见输入参数）来控制分页。
    ///
    /// <div id="maxResultsDesc">接口返回结果数限制：</div>
    /// - <b><a href="#p_offset">Offset</a> 和 <a href="#p_limit">Limit</a> 两个参数影响单次分页查询结果数。特别注意：当这2个值都缺省时，本接口最多只返回10条查询结果。</b>
    /// - <b>最大支持返回5000条搜索结果，超出部分不再支持查询。如果搜索结果量太大，建议使用更精细的筛选条件来减少搜索结果。</b>
    ///
    /// <br>不推荐使用的条件筛选：
    /// - （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）指定单个文本 Text 对媒体文件名或描述信息进行模糊搜索。
    /// - （不推荐：应使用 SourceTypes 替代）指定单个媒体文件来源 SourceType 进行搜索。
    /// - （不推荐：应使用 StreamIds 替代）指定单个推流直播码 StreamId 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个起始创建时间 StartTime 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个结尾创建时间 EndTime 进行搜索。
    @inlinable @discardableResult
    public func searchMediaPaginated(_ input: SearchMediaRequest, region: TCRegion? = nil, onResponse: @escaping (SearchMediaResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchMedia, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 搜索媒体信息
    ///
    /// 搜索媒体信息，支持多种条件筛选，以及支持对返回结果排序、过滤等功能，具体包括：
    /// - 指定文件 ID 集合 FileIds ，返回匹配集合中任意 ID 的媒体。
    /// - 根据多个媒体文件名 Names 或描述信息 Descriptions 进行模糊搜索。
    /// - 根据多个文件名前缀 NamePrefixes 进行搜索。
    /// - 指定分类集合 ClassIds（见输入参数），返回满足集合中任意分类的媒体。例如：媒体分类有电影、电视剧、综艺等，其中电影分类下又有子分类历史片、动作片、言情片。如果 ClassIds 指定了电影、电视剧，那么电影和电视剧下的所有子分类都会返回；而如果 ClassIds 指定的是历史片、动作片，那么只有这2个子分类下的媒体才会返回。
    /// - 指定标签集合 Tags（见输入参数），返回满足集合中任意标签的媒体。例如：媒体标签有二次元、宫斗、鬼畜，如果 Tags 指定了二次元、鬼畜2个标签，那么只要符合这2个标签中任意一个的媒体都会被检索出来。
    /// - 指定文件类型集合 Categories（见输入参数），返回满足集合中任意类型的媒体。例如：文件类型有 Video（视频）、 Audio （音频）、 Image （图片）。如果Categories指定了 Video 和 Audio 2个文件类型，那么符合这些类型的媒体都会被检索出来。
    /// - 指定来源集合 SourceTypes（见输入参数），返回满足集合中任意来源的媒体。例如：媒体来源有 Record (直播录制)、Upload （上传）等。如果 SourceTypes 指定了 Record 和 Upload ，那么符合这些来源的媒体都会被检索出来。
    /// - 指定文件封装格式集合 MediaTypes（见输入参数），返回满足集合中任意封装格式的媒体。例如：封装格式有 MP4、AVI、MP3 等。如果 MediaTypes 指定了 MP4 和 MP3，那么符合这些封装格式的媒体都会被检索出来。
    /// - 指定文件状态集合 Status（见输入参数），返回满足集合中任意状态的媒体。例如：文件状态有 Normal（正常）、SystemForbidden（平台封禁）、Forbidden（主动封禁）。如果 Status 指定了 Normal 和 Forbidden 2种文件状态，那么符合这些状态的媒体都会被检索出来。
    /// - 指定文件审核结果集合 ReviewResults（见输入参数），返回满足集合中任意状态的媒体。例如：文件审核结果有 pass（通过）、block（违规）等。如果 ReviewResults 指定了 pass 和 block 2种审核结果，那么符合这些审核结果的媒体都会被检索出来。
    /// - 指定直播推流码集合 StreamIds（见输入参数）筛选直播录制的媒体。
    /// - 指定媒体的创建时间范围筛选媒体。
    /// - 指定 TRTC 应用 ID 集合筛选媒体。
    /// - 指定 TRTC 房间 ID 集合筛选媒体。
    ///
    /// - 以上参数之间可以任意组合进行检索。例如：筛选创建时间在2018年12月1日12:00:00到2018年12月8日12:00:00之间、分类为电影或电视剧、带有宫斗和悬疑标签的媒体。注意，任何支持数组输入的参数，其元素之间的搜索逻辑为‘或’。所有参数之间的逻辑关系为‘与’。
    ///
    /// - 允许通过 Filters 控制返回的媒体信息种类（默认返回所有信息）。可选输入包括：
    ///     1. 基础信息（basicInfo）：包括媒体名称、分类、播放地址、封面图片等。
    ///     2. 元信息（metaData）：包括大小、时长、视频流信息、音频流信息等。
    ///     3. 转码结果信息（transcodeInfo）：包括该媒体转码生成的各种规格的媒体地址、视频流参数、音频流参数等。
    ///     4. 转动图结果信息（animatedGraphicsInfo）：对视频转动图（如 gif）后的动图信息。
    ///     5. 采样截图信息（sampleSnapshotInfo）：对视频采样截图后的截图信息。
    ///     6. 雪碧图信息（imageSpriteInfo）：对视频截取雪碧图后的雪碧图信息。
    ///     7. 指定时间点截图信息（snapshotByTimeOffsetInfo）：对视频依照指定时间点截图后，的截图信息。
    ///     8. 视频打点信息（keyFrameDescInfo）：对视频设置的打点信息。
    ///     9. 转自适应码流信息（adaptiveDynamicStreamingInfo）：包括规格、加密类型、打包格式等相关信息。
    ///
    /// - 允许对结果根据创建时间进行排序并分页返回，通过 Offset 和 Limit （见输入参数）来控制分页。
    ///
    /// <div id="maxResultsDesc">接口返回结果数限制：</div>
    /// - <b><a href="#p_offset">Offset</a> 和 <a href="#p_limit">Limit</a> 两个参数影响单次分页查询结果数。特别注意：当这2个值都缺省时，本接口最多只返回10条查询结果。</b>
    /// - <b>最大支持返回5000条搜索结果，超出部分不再支持查询。如果搜索结果量太大，建议使用更精细的筛选条件来减少搜索结果。</b>
    ///
    /// <br>不推荐使用的条件筛选：
    /// - （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）指定单个文本 Text 对媒体文件名或描述信息进行模糊搜索。
    /// - （不推荐：应使用 SourceTypes 替代）指定单个媒体文件来源 SourceType 进行搜索。
    /// - （不推荐：应使用 StreamIds 替代）指定单个推流直播码 StreamId 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个起始创建时间 StartTime 进行搜索。
    /// - （不推荐：应使用 CreateTime 替代）指定单个结尾创建时间 EndTime 进行搜索。
    ///
    /// - Returns: `AsyncSequence`s of ``MediaInfo`` and ``SearchMediaResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func searchMediaPaginator(_ input: SearchMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchMediaRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchMedia, logger: logger, on: eventLoop)
    }
}
