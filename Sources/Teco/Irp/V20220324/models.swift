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

import TecoCore

extension Irp {
    /// 作者信息
    public struct AuthorInfo: TCInputModel, TCOutputModel {
        /// 作者id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: String?

        /// 作者名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 作者来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceId: Int64?

        /// 关注类型：1-关注，2-取关
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let followType: Int64?

        /// 作者头像icon地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iconUrl: String?

        public init(id: String? = nil, name: String? = nil, sourceId: Int64? = nil, followType: Int64? = nil, iconUrl: String? = nil) {
            self.id = id
            self.name = name
            self.sourceId = sourceId
            self.followType = followType
            self.iconUrl = iconUrl
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case sourceId = "SourceId"
            case followType = "FollowType"
            case iconUrl = "IconUrl"
        }
    }

    /// 不喜欢信息
    public struct DislikeInfo: TCInputModel {
        /// 不喜欢的物料类别，对应物料上传协议中的字段名，如authorId，keyword，topic等
        public let type: String

        /// type对应字段名的值，如具体的topic名，作者id等
        public let value: String

        public init(type: String, value: String) {
            self.type = type
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case value = "Value"
        }
    }

    /// 行为数据
    public struct DocBehavior: TCInputModel {
        /// 内容唯一ID，如 2824324234
        public let itemId: String

        /// 行为类型
        public let behaviorType: Int64

        /// 行为值
        public let behaviorValue: String

        /// 行为时间戳： 秒级时间戳（默认为当前时间）,不能延迟太久，尽量实时上报，否则会影响推荐结果的准确性。
        public let behaviorTimestamp: Int64

        /// 场景id，在控制台创建场景后获取。
        public let sceneId: String

        /// 用户id列表
        public let userIdList: [UserIdInfo]

        /// 会话id，使用获取推荐结果中返回的RecTraceId填入。<br>注意：如果和在线推荐请求中的traceId不同，会影响行为特征归因，影响推荐算法效果
        public let recTraceId: String

        /// 算法来源：用来区分行为来源于哪个算法。值为**business，tencent，other** 三者之一<br>● business 表示业务自己的算法对照组<br>● tencent 为腾讯算法<br>● other 为其他算法
        public let source: String

        /// 物料类型
        public let itemType: Int64?

        /// 微信开放平台上查看appId
        public let appId: String?

        /// 回传video_over事件的时候，回传的用户播放视频的总时长（真正播放的，拖动不算，单位为秒）
        public let videoPlayDuration: Int64?

        /// 来源物料内容：用来标识在指定内容页面产生的行为，如需要统计用户在A内容详情页里，对推荐内容B点击等行为，则ReferrerItemId代表内容A，ItemId代表内容B
        public let referrerItemId: String?

        /// 国家，统一用简写，比如中国则填写CN
        public let country: String?

        /// 省
        public let province: String?

        /// 城市
        public let city: String?

        /// 区县
        public let district: String?

        /// 客户端ip
        public let ip: String?

        /// 客户端网络类型
        public let network: String?

        /// 客户端平台，ios/android/h5
        public let platform: String?

        /// 客户端app版本
        public let appVersion: String?

        /// 操作系统版本
        public let osVersion: String?

        /// 机型
        public let deviceModel: String?

        /// json字符串，用于行为数据的扩展
        public let `extension`: String?

        public init(itemId: String, behaviorType: Int64, behaviorValue: String, behaviorTimestamp: Int64, sceneId: String, userIdList: [UserIdInfo], recTraceId: String, source: String, itemType: Int64? = nil, appId: String? = nil, videoPlayDuration: Int64? = nil, referrerItemId: String? = nil, country: String? = nil, province: String? = nil, city: String? = nil, district: String? = nil, ip: String? = nil, network: String? = nil, platform: String? = nil, appVersion: String? = nil, osVersion: String? = nil, deviceModel: String? = nil, extension: String? = nil) {
            self.itemId = itemId
            self.behaviorType = behaviorType
            self.behaviorValue = behaviorValue
            self.behaviorTimestamp = behaviorTimestamp
            self.sceneId = sceneId
            self.userIdList = userIdList
            self.recTraceId = recTraceId
            self.source = source
            self.itemType = itemType
            self.appId = appId
            self.videoPlayDuration = videoPlayDuration
            self.referrerItemId = referrerItemId
            self.country = country
            self.province = province
            self.city = city
            self.district = district
            self.ip = ip
            self.network = network
            self.platform = platform
            self.appVersion = appVersion
            self.osVersion = osVersion
            self.deviceModel = deviceModel
            self.extension = `extension`
        }

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case behaviorType = "BehaviorType"
            case behaviorValue = "BehaviorValue"
            case behaviorTimestamp = "BehaviorTimestamp"
            case sceneId = "SceneId"
            case userIdList = "UserIdList"
            case recTraceId = "RecTraceId"
            case source = "Source"
            case itemType = "ItemType"
            case appId = "AppId"
            case videoPlayDuration = "VideoPlayDuration"
            case referrerItemId = "ReferrerItemId"
            case country = "Country"
            case province = "Province"
            case city = "City"
            case district = "District"
            case ip = "IP"
            case network = "Network"
            case platform = "Platform"
            case appVersion = "AppVersion"
            case osVersion = "OsVersion"
            case deviceModel = "DeviceModel"
            case `extension` = "Extension"
        }
    }

    /// 推荐物料信息
    public struct DocItem: TCInputModel {
        /// 内容唯一id
        public let itemId: String

        /// 内容类型
        public let itemType: UInt64

        /// 内容状态：1 - 上架， 2 - 下架
        public let status: UInt64

        /// 内容生成时间，秒级时间戳（1639624786），需大于0
        public let publishTimestamp: Int64

        /// 物料来源ID
        public let sourceId: Int64?

        /// 标题名称
        public let title: String?

        /// 内容正文
        public let content: String?

        /// 作者
        public let author: String?

        /// 作者id
        public let authorId: String?

        /// 标签关键词，多个用英文分号分割
        public let keyword: String?

        /// 内容物料描述：物料的描述信息，推荐系统会对内容的描述信息，使用否LP技术，进行分词、提取关键词，作为news的特征使用。
        public let desc: String?

        /// 图片url
        public let picUrlList: [String]?

        /// 视频url
        public let videoUrlList: [String]?

        /// 视频时长，时间秒
        public let videoDuration: Int64?

        /// 类目层级数，例如3级类目，则填3，和CategoryPath字段的类数据匹配
        public let categoryLevel: Int64?

        /// 类目路径，一级二级三级等依次用英文冒号联接，如体育：“足球:巴塞罗那”
        public let categoryPath: String?

        /// 国家，统一用简写，比如中国则填写CN
        public let country: String?

        /// 省
        public let province: String?

        /// 城市
        public let city: String?

        /// 区县
        public let district: String?

        /// 内容过期时间，秒级时间戳（1639624786），如未填，则默认PublishTimestamp往后延一年
        public let expireTimestamp: Int64?

        /// 所属话题
        public let topic: String?

        /// 作者粉丝数
        public let authorFans: Int64?

        /// 作者评级
        public let authorLevel: String?

        /// 内容累计收藏次数
        public let collectCnt: Int64?

        /// 内容累积点赞次数
        public let praiseCnt: Int64?

        /// 内容累计评论次数
        public let commentCnt: Int64?

        /// 内容累计分享次数
        public let shareCnt: Int64?

        /// 内容累积打赏数
        public let rewardCnt: Int64?

        /// 内容质量评分，类似豆瓣电影的评分，这里为100分制，比如97分，满分100分，最低0分，范围外的将会被拦截
        public let score: Float?

        /// 内容池id，用于分内容池召回，一个内容支持指定一个或多个内容池， 内容池id不建议使用0（0表示不区分内容池）
        public let poolIdList: [String]?

        /// 描述用户标签
        public let tagInfoList: [TagInfo]?

        /// json字符串，用于物料数据的扩展
        public let `extension`: String?

        public init(itemId: String, itemType: UInt64, status: UInt64, publishTimestamp: Int64, sourceId: Int64? = nil, title: String? = nil, content: String? = nil, author: String? = nil, authorId: String? = nil, keyword: String? = nil, desc: String? = nil, picUrlList: [String]? = nil, videoUrlList: [String]? = nil, videoDuration: Int64? = nil, categoryLevel: Int64? = nil, categoryPath: String? = nil, country: String? = nil, province: String? = nil, city: String? = nil, district: String? = nil, expireTimestamp: Int64? = nil, topic: String? = nil, authorFans: Int64? = nil, authorLevel: String? = nil, collectCnt: Int64? = nil, praiseCnt: Int64? = nil, commentCnt: Int64? = nil, shareCnt: Int64? = nil, rewardCnt: Int64? = nil, score: Float? = nil, poolIdList: [String]? = nil, tagInfoList: [TagInfo]? = nil, extension: String? = nil) {
            self.itemId = itemId
            self.itemType = itemType
            self.status = status
            self.publishTimestamp = publishTimestamp
            self.sourceId = sourceId
            self.title = title
            self.content = content
            self.author = author
            self.authorId = authorId
            self.keyword = keyword
            self.desc = desc
            self.picUrlList = picUrlList
            self.videoUrlList = videoUrlList
            self.videoDuration = videoDuration
            self.categoryLevel = categoryLevel
            self.categoryPath = categoryPath
            self.country = country
            self.province = province
            self.city = city
            self.district = district
            self.expireTimestamp = expireTimestamp
            self.topic = topic
            self.authorFans = authorFans
            self.authorLevel = authorLevel
            self.collectCnt = collectCnt
            self.praiseCnt = praiseCnt
            self.commentCnt = commentCnt
            self.shareCnt = shareCnt
            self.rewardCnt = rewardCnt
            self.score = score
            self.poolIdList = poolIdList
            self.tagInfoList = tagInfoList
            self.extension = `extension`
        }

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case itemType = "ItemType"
            case status = "Status"
            case publishTimestamp = "PublishTimestamp"
            case sourceId = "SourceId"
            case title = "Title"
            case content = "Content"
            case author = "Author"
            case authorId = "AuthorId"
            case keyword = "Keyword"
            case desc = "Desc"
            case picUrlList = "PicUrlList"
            case videoUrlList = "VideoUrlList"
            case videoDuration = "VideoDuration"
            case categoryLevel = "CategoryLevel"
            case categoryPath = "CategoryPath"
            case country = "Country"
            case province = "Province"
            case city = "City"
            case district = "District"
            case expireTimestamp = "ExpireTimestamp"
            case topic = "Topic"
            case authorFans = "AuthorFans"
            case authorLevel = "AuthorLevel"
            case collectCnt = "CollectCnt"
            case praiseCnt = "PraiseCnt"
            case commentCnt = "CommentCnt"
            case shareCnt = "ShareCnt"
            case rewardCnt = "RewardCnt"
            case score = "Score"
            case poolIdList = "PoolIdList"
            case tagInfoList = "TagInfoList"
            case `extension` = "Extension"
        }
    }

    /// 画像信息
    public struct PortraitInfo: TCInputModel {
        /// 用户id列表
        public let userIdList: [UserIdInfo]

        /// 如果"userIdType"是10则必传，在微信开放平台上查看appId
        public let appId: String?

        /// 用户年龄，值域在 0-200
        public let age: Int64?

        /// 用户性别：0-未知，1-男， 2-女
        public let gender: Int64?

        /// 用户学历 ：小学，初中，高中，大专，本科，硕士，博士
        public let degree: String?

        /// 用户毕业学校全称
        public let school: String?

        /// 用户职业，保证业务的唯一性
        public let occupation: String?

        /// 用户所属行业，保证业务的唯一性
        public let industry: String?

        /// 用户常驻国家，统一用简写，比如中国则填写CN
        public let residentCountry: String?

        /// 用户常驻省份
        public let residentProvince: String?

        /// 用户常驻城市
        public let residentCity: String?

        /// 用户常驻区县
        public let residentDistrict: String?

        /// 用户手机的MD5值
        public let phoneMd5: String?

        /// 用户手机的IMEI号
        public let phoneImei: String?

        /// 设备idfa信息
        public let idfa: String?

        /// 用户注册时间，秒级时间戳（1639624786）
        public let registerTimestamp: Int64?

        /// 用户会员等级
        public let membershipLevel: String?

        /// 用户上一次登录时间，秒级时间戳（1639624786）
        public let lastLoginTimestamp: Int64?

        /// 用户上一次登录的ip
        public let lastLoginIp: String?

        /// 用户信息的最后修改时间戳，秒级时间戳（1639624786）
        public let lastModifyTimestamp: Int64?

        /// 用户标签
        public let tagInfoList: [TagInfo]?

        /// 用户关注作者列表
        public let authorInfoList: [AuthorInfo]?

        /// 用户不喜欢列表
        public let dislikeInfoList: [DislikeInfo]?

        /// json字符串，用于画像数据的扩展
        public let `extension`: String?

        /// 设备oaid信息
        public let oaid: String?

        /// 设备AndroidId信息
        public let androidId: String?

        public init(userIdList: [UserIdInfo], appId: String? = nil, age: Int64? = nil, gender: Int64? = nil, degree: String? = nil, school: String? = nil, occupation: String? = nil, industry: String? = nil, residentCountry: String? = nil, residentProvince: String? = nil, residentCity: String? = nil, residentDistrict: String? = nil, phoneMd5: String? = nil, phoneImei: String? = nil, idfa: String? = nil, registerTimestamp: Int64? = nil, membershipLevel: String? = nil, lastLoginTimestamp: Int64? = nil, lastLoginIp: String? = nil, lastModifyTimestamp: Int64? = nil, tagInfoList: [TagInfo]? = nil, authorInfoList: [AuthorInfo]? = nil, dislikeInfoList: [DislikeInfo]? = nil, extension: String? = nil, oaid: String? = nil, androidId: String? = nil) {
            self.userIdList = userIdList
            self.appId = appId
            self.age = age
            self.gender = gender
            self.degree = degree
            self.school = school
            self.occupation = occupation
            self.industry = industry
            self.residentCountry = residentCountry
            self.residentProvince = residentProvince
            self.residentCity = residentCity
            self.residentDistrict = residentDistrict
            self.phoneMd5 = phoneMd5
            self.phoneImei = phoneImei
            self.idfa = idfa
            self.registerTimestamp = registerTimestamp
            self.membershipLevel = membershipLevel
            self.lastLoginTimestamp = lastLoginTimestamp
            self.lastLoginIp = lastLoginIp
            self.lastModifyTimestamp = lastModifyTimestamp
            self.tagInfoList = tagInfoList
            self.authorInfoList = authorInfoList
            self.dislikeInfoList = dislikeInfoList
            self.extension = `extension`
            self.oaid = oaid
            self.androidId = androidId
        }

        enum CodingKeys: String, CodingKey {
            case userIdList = "UserIdList"
            case appId = "AppId"
            case age = "Age"
            case gender = "Gender"
            case degree = "Degree"
            case school = "School"
            case occupation = "Occupation"
            case industry = "Industry"
            case residentCountry = "ResidentCountry"
            case residentProvince = "ResidentProvince"
            case residentCity = "ResidentCity"
            case residentDistrict = "ResidentDistrict"
            case phoneMd5 = "PhoneMd5"
            case phoneImei = "PhoneImei"
            case idfa = "Idfa"
            case registerTimestamp = "RegisterTimestamp"
            case membershipLevel = "MembershipLevel"
            case lastLoginTimestamp = "LastLoginTimestamp"
            case lastLoginIp = "LastLoginIp"
            case lastModifyTimestamp = "LastModifyTimestamp"
            case tagInfoList = "TagInfoList"
            case authorInfoList = "AuthorInfoList"
            case dislikeInfoList = "DislikeInfoList"
            case `extension` = "Extension"
            case oaid = "Oaid"
            case androidId = "AndroidId"
        }
    }

    /// 推荐内容信息
    public struct RecItemData: TCOutputModel {
        /// 推荐的内容id，即用户行为上报中的itemId
        public let itemId: String

        /// 物料子类型，包括如下： 1-图文、2-长视频（横视频）、3-短视频（横视频）、4-小说、5-小视频（竖视频）、6-纯文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let itemType: Int64?

        /// 推荐内容的权重，取值范围[0,1000000]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let weight: Int64?

        /// 推荐预测分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Float?

        /// 关键词，多个用英文分号分割，和物料上传的keyword一致
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyword: String?

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case itemType = "ItemType"
            case weight = "Weight"
            case score = "Score"
            case keyword = "Keyword"
        }
    }

    /// 标题信息
    public struct TagInfo: TCInputModel, TCOutputModel {
        /// 标签id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: String?

        /// 标签名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 推荐权重
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let weight: Float?

        public init(id: String? = nil, name: String? = nil, weight: Float? = nil) {
            self.id = id
            self.name = name
            self.weight = weight
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case weight = "Weight"
        }
    }

    /// 用户信息
    public struct UserIdInfo: TCInputModel {
        /// 用户ID类型：
        /// 1 - qq
        /// 2 - qq_md5：md5后的qq
        /// 3 - imei：设备imei（安卓10之后不会再授权imei，安卓10之后的imei映射关系可能拿不到，故安卓10之后的设备建议用oaid）
        /// 4 - imei_md5：md5后的imei
        /// 5 - idfa: Apple 向用户设备随机分配的设备标识符
        /// 6 - idfa_md5：md5之后的idfa
        /// 7 - gdt_openid：广点通生成的openid
        /// 8 - oaid：安卓10之后一种非永久性设备标识符
        /// 9 - oaid_md5：md5后的oaid
        /// 10 - wx_openid：微信openid
        /// 11 - qq_openid：QQ的openid
        /// 12 - phone：电话号码
        /// 13 - phone_md5：md5后的电话号码
        /// 14 - phone_sha256：SHA256加密的手机号
        /// 15 - phone_sm3：国密SM3加密的手机号
        /// 1000 - 客户自定义id
        public let userIdType: Int64

        /// 用户id
        public let userId: String

        public init(userIdType: Int64, userId: String) {
            self.userIdType = userIdType
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case userIdType = "UserIdType"
            case userId = "UserId"
        }
    }
}
