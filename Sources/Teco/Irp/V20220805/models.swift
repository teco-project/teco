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

extension Irp {
    /// 不喜欢信息
    public struct DislikeInfo: TCInputModel {
        /// 过滤的类别：<br>● author 作者名<br/>（如当前类型不满足，请<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决方案）
        public let type: String

        /// Type对应字段名的值，如：需要过滤的作者名
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

    /// 信息流内容
    public struct DocItem: TCInputModel {
        /// 内容唯一id，建议限制在128字符以内
        public let itemId: String

        /// 内容类型：<br/>● article -图文<br>● text -纯文本<br/>● video -视频<br/>● short_video -时长15秒以内的视频<br/>● mini_video -竖屏视频<br/>● image -纯图片<br/>（如当前类型不满足，请<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决方案）
        public let itemType: String

        /// 内容状态：
        /// ● 1 - 上架 
        /// ● 2 - 下架 
        /// Status=2的内容不会在推荐结果中出现 
        /// 需要下架内容时，把Status的值修改为2即可
        public let status: UInt64

        /// 内容生成时间，秒级时间戳（1639624786），需大于0，<b>用作特征和物料管理</b>
        public let publishTimestamp: Int64

        /// 内容过期时间，秒级时间戳（1639624786），如未填，则默认PublishTimestamp往后延一年，用作特征，过期则不会被推荐，<b>强烈建议</b>
        public let expireTimestamp: Int64?

        /// 类目层级数，例如3级类目，则填3，和CategoryPath字段的类数据匹配，<b>强烈建议</b>
        public let categoryLevel: Int64?

        /// 类目路径，一级二级三级等依次用英文冒号联接，和CategoryLevel字段值匹配，如体育：“足球:巴塞罗那”。<b>用于物料池管理，强烈建议</b>
        public let categoryPath: String?

        /// 内容标签，多个标签用英文冒号联接，<b>用作特征，强烈建议</b>
        public let tags: String?

        /// 作者名，需保证作者名唯一，若有重名需要加编号区分。<b>用于召回过滤、规则打散，强烈建议</b>
        public let author: String?

        /// 内容来源类型，客户自定义，<b>用于物料池管理</b>
        public let sourceId: String?

        /// 内容标题，<b>主要用于语义分析</b>
        public let title: String?

        /// 正文关键片段，建议控制在500字符以内，<b>主要用于语义分析</b>
        public let content: String?

        /// 正文详情，主要用于语义分析，当内容过大时建议用ContentUrl传递，<b>与Content可二选一</b>
        public let contentUrl: String?

        /// 视频时长，时间秒，大于等于0，小于 3600 * 10。<b>视频内容必填，其它内容非必填，用作特征</b>
        public let videoDuration: Int64?

        /// 国家，ISO 3166-1 alpha-2编码，参考<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" target="_blank">ISO 3166-1 alpha-2</a>，中国：“CN”，<b>用作特征</b>
        public let country: String?

        /// 省份，ISO 3166-2行政区编码，如中国参考<a href="https://zh.wikipedia.org/wiki/ISO_3166-2:CN" target="_blank">ISO_3166-2:CN</a>，广东省：“CN-GD”，<b>用作特征</b>
        public let province: String?

        /// 城市地区，统一用国家最新标准地区行政编码，如：<a href="https://www.mca.gov.cn/article/sj/xzqh/2020/" target="_blank">2020年行政区编码</a>，其他国家统一用国际公认城市简称或者城市编码，<b>用作特征</b>
        public let city: String?

        /// 作者粉丝数，<b>用作特征</b>
        public let authorFans: Int64?

        /// 作者评级，<b>用作特征</b>
        public let authorLevel: String?

        /// 内容累计收藏次数，<b>用作特征</b>
        public let collectCnt: Int64?

        /// 内容累积点赞次数，<b>用作特征</b>
        public let praiseCnt: Int64?

        /// 内容累计评论次数，<b>用作特征</b>
        public let commentCnt: Int64?

        /// 内容累计分享次数，<b>用作特征</b>
        public let shareCnt: Int64?

        /// 内容累积打赏数，<b>用作特征</b>
        public let rewardCnt: Int64?

        /// 内容质量评分，<b>用作特征</b>
        public let score: Float?

        /// json字符串，<b>用于物料池管理的自定义扩展</b>
        public let `extension`: String?

        public init(itemId: String, itemType: String, status: UInt64, publishTimestamp: Int64, expireTimestamp: Int64? = nil, categoryLevel: Int64? = nil, categoryPath: String? = nil, tags: String? = nil, author: String? = nil, sourceId: String? = nil, title: String? = nil, content: String? = nil, contentUrl: String? = nil, videoDuration: Int64? = nil, country: String? = nil, province: String? = nil, city: String? = nil, authorFans: Int64? = nil, authorLevel: String? = nil, collectCnt: Int64? = nil, praiseCnt: Int64? = nil, commentCnt: Int64? = nil, shareCnt: Int64? = nil, rewardCnt: Int64? = nil, score: Float? = nil, extension: String? = nil) {
            self.itemId = itemId
            self.itemType = itemType
            self.status = status
            self.publishTimestamp = publishTimestamp
            self.expireTimestamp = expireTimestamp
            self.categoryLevel = categoryLevel
            self.categoryPath = categoryPath
            self.tags = tags
            self.author = author
            self.sourceId = sourceId
            self.title = title
            self.content = content
            self.contentUrl = contentUrl
            self.videoDuration = videoDuration
            self.country = country
            self.province = province
            self.city = city
            self.authorFans = authorFans
            self.authorLevel = authorLevel
            self.collectCnt = collectCnt
            self.praiseCnt = praiseCnt
            self.commentCnt = commentCnt
            self.shareCnt = shareCnt
            self.rewardCnt = rewardCnt
            self.score = score
            self.`extension` = `extension`
        }

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case itemType = "ItemType"
            case status = "Status"
            case publishTimestamp = "PublishTimestamp"
            case expireTimestamp = "ExpireTimestamp"
            case categoryLevel = "CategoryLevel"
            case categoryPath = "CategoryPath"
            case tags = "Tags"
            case author = "Author"
            case sourceId = "SourceId"
            case title = "Title"
            case content = "Content"
            case contentUrl = "ContentUrl"
            case videoDuration = "VideoDuration"
            case country = "Country"
            case province = "Province"
            case city = "City"
            case authorFans = "AuthorFans"
            case authorLevel = "AuthorLevel"
            case collectCnt = "CollectCnt"
            case praiseCnt = "PraiseCnt"
            case commentCnt = "CommentCnt"
            case shareCnt = "ShareCnt"
            case rewardCnt = "RewardCnt"
            case score = "Score"
            case `extension` = "Extension"
        }
    }

    /// 信息流行为
    public struct FeedBehaviorInfo: TCInputModel {
        /// 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识
        public let userId: String

        /// 内容唯一id
        public let itemId: String

        /// 行为类型：<br> ● expose - 曝光，<b>必须</b><br> ● click - 点击，<b>必须</b><br/>  ● stay - 详情页停留时长，<b>强烈建议</b><br/>  ● videoover - 视频播放时长，<b>强烈建议</b><br/> ●  like - 点赞&喜欢，<b>正效果</b><br/> ● collect - 收藏，<b>正效果</b><br/> ●  share - 转发&分享，<b>正效果</b><br/> ● reward - 打赏，<b>正效果</b><br/> ● unlike - 踩&不喜欢，<b>负效果</b><br/> ●  comment - 评论<br/> 不支持的行为类型，可以映射到未被使用的其他行为类型。如实际业务数据中有私信行为，没有收藏行为，可以将私信行为映射到收藏行为
        public let behaviorType: String

        /// 行为类型对应的行为值：<br/> ● expose - 曝光，固定填1<br/> ● click - 点击，固定填1<br/>  ● stay - 详情页停留时长，填停留秒数，取值[1-86400]<br/>  ● videoover - 视频播放时长，填播放结束的秒数，取值[1-86400]<br/> ●  like - 点赞&喜欢，固定填1<br/> ● collect - 收藏，固定填1<br/> ●  share - 转发&分享，固定填1<br/> ● reward - 打赏，填打赏金额，没有则填1<br/> ● unlike - 踩&不喜欢，填不喜欢的原因，没有则填1<br/> ●  comment - 评论，填评论内容，如“上海加油”
        public let behaviorValue: String

        /// 行为发生的时间戳： 秒级时间戳，尽量实时上报，最长不超过半小时否则会影响推荐结果的准确性
        public let behaviorTimestamp: Int64

        /// 行为发生的场景ID，在控制台创建场景后获取
        public let sceneId: String

        /// 推荐追踪ID，使用推荐结果中返回的ItemTraceId填入。 
        /// 注意：如果和推荐结果中的ItemTraceId不同，会影响行为特征归因，影响推荐算法效果
        public let itemTraceId: String

        /// 内容类型，跟内容上报类型一致，用于效果分析，不做内容校验，<b>强烈建议</b>
        public let itemType: String?

        /// 相关推荐场景点击进入详情页的内容id，该字段用来注明行为发生于哪个内容的详情页推荐中，<b>相关推荐场景强烈建议</b>
        public let referrerItemId: String?

        /// 用户设备ID数组，可传入用户的多个类型ID，详见UserIdInfo结构体，建议补齐，<b>用于构建用户画像信息</b>
        public let userIdList: [UserIdInfo]?

        /// 算法来源： <br>● business 业务自己的算法对照组<br/> ● tencent 腾讯算法<br/> ● other 其他算法<br/>默认为tencent，区分行为来源于哪个算法，<b>用于Poc阶段的效果对比验证</b>
        public let source: String?

        /// 行为发生时的国家，ISO 3166-1 alpha-2编码，参考<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" target="_blank">ISO 3166-1 alpha-2</a>，中国：“CN”，<b>用作特征</b>
        public let country: String?

        /// 行为发生时的省份，ISO 3166-2行政区编码，如中国参考<a href="https://zh.wikipedia.org/wiki/ISO_3166-2:CN" target="_blank">ISO_3166-2:CN</a>，广东省：“CN-GD”，<b>用作特征</b>
        public let province: String?

        /// 行为发生时的城市地区，统一用国家最新标准地区行政编码，如：<a href="https://www.mca.gov.cn/article/sj/xzqh/2020/" target="_blank">2020年行政区编码</a>，其他国家统一用国际公认城市简称或者城市编码，<b>用作特征</b>
        public let city: String?

        /// 行为发生时的客户端ip，<b>用作特征</b>
        public let ip: String?

        /// 行为发生时的客户端网络类型，<b>用作特征</b>
        public let network: String?

        /// 行为发生时的客户端平台，ios/android/h5，<b>用作特征</b>
        public let platform: String?

        /// 行为发生时的客户端app版本，<b>用作特征</b>
        public let appVersion: String?

        /// 行为发生时的操作系统版本，<b>用作特征</b>
        public let osVersion: String?

        /// 行为发生时的机型，<b>用作特征</b>
        public let deviceModel: String?

        /// json字符串，<b>用于行为数据的扩展</b>
        public let `extension`: String?

        public init(userId: String, itemId: String, behaviorType: String, behaviorValue: String, behaviorTimestamp: Int64, sceneId: String, itemTraceId: String, itemType: String? = nil, referrerItemId: String? = nil, userIdList: [UserIdInfo]? = nil, source: String? = nil, country: String? = nil, province: String? = nil, city: String? = nil, ip: String? = nil, network: String? = nil, platform: String? = nil, appVersion: String? = nil, osVersion: String? = nil, deviceModel: String? = nil, extension: String? = nil) {
            self.userId = userId
            self.itemId = itemId
            self.behaviorType = behaviorType
            self.behaviorValue = behaviorValue
            self.behaviorTimestamp = behaviorTimestamp
            self.sceneId = sceneId
            self.itemTraceId = itemTraceId
            self.itemType = itemType
            self.referrerItemId = referrerItemId
            self.userIdList = userIdList
            self.source = source
            self.country = country
            self.province = province
            self.city = city
            self.ip = ip
            self.network = network
            self.platform = platform
            self.appVersion = appVersion
            self.osVersion = osVersion
            self.deviceModel = deviceModel
            self.`extension` = `extension`
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case itemId = "ItemId"
            case behaviorType = "BehaviorType"
            case behaviorValue = "BehaviorValue"
            case behaviorTimestamp = "BehaviorTimestamp"
            case sceneId = "SceneId"
            case itemTraceId = "ItemTraceId"
            case itemType = "ItemType"
            case referrerItemId = "ReferrerItemId"
            case userIdList = "UserIdList"
            case source = "Source"
            case country = "Country"
            case province = "Province"
            case city = "City"
            case ip = "IP"
            case network = "Network"
            case platform = "Platform"
            case appVersion = "AppVersion"
            case osVersion = "OsVersion"
            case deviceModel = "DeviceModel"
            case `extension` = "Extension"
        }
    }

    /// 信息流用户信息
    public struct FeedUserInfo: TCInputModel {
        /// 用户唯一ID，客户自定义用户ID，作为一个用户的唯一标识
        public let userId: String

        /// 用户设备ID数组，可传入用户的多个类型ID，详见UserIdInfo结构体，建议补齐，<b>用于构建用户画像信息</b>
        public let userIdList: [UserIdInfo]?

        /// 用户标签，多个标签用英文冒号联接，<b>用作特征，强烈建议</b>
        public let tags: String?

        /// 过滤列表，<b>会在推荐结果里过滤掉这类内容</b>
        public let dislikeInfoList: [DislikeInfo]?

        /// 用户年龄
        public let age: Int64?

        /// 用户性别： 0 - 未知 1 - 男 2 - 女
        public let gender: Int64?

        /// 用户学历 ：小学，初中，高中，大专，本科，硕士，博士
        public let degree: String?

        /// 用户毕业学校全称
        public let school: String?

        /// 用户职业
        public let occupation: String?

        /// 用户所属行业
        public let industry: String?

        /// 用户常驻国家，ISO 3166-1 alpha-2编码，参考<a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2" target="_blank">ISO 3166-1 alpha-2</a>，中国：“CN”
        public let residentCountry: String?

        /// 用户常驻省份，ISO 3166-2行政区编码，如中国参考<a href="https://zh.wikipedia.org/wiki/ISO_3166-2:CN" target="_blank">ISO_3166-2:CN</a>，广东省：“CN-GD”
        public let residentProvince: String?

        /// 用户常驻城市，统一用国家最新标准地区行政编码，如：<a href="https://www.mca.gov.cn/article/sj/xzqh/2020/" target="_blank">2020年行政区编码</a>，
        public let residentCity: String?

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

        /// json字符串，用于画像数据的扩展
        public let `extension`: String?

        public init(userId: String, userIdList: [UserIdInfo]? = nil, tags: String? = nil, dislikeInfoList: [DislikeInfo]? = nil, age: Int64? = nil, gender: Int64? = nil, degree: String? = nil, school: String? = nil, occupation: String? = nil, industry: String? = nil, residentCountry: String? = nil, residentProvince: String? = nil, residentCity: String? = nil, registerTimestamp: Int64? = nil, membershipLevel: String? = nil, lastLoginTimestamp: Int64? = nil, lastLoginIp: String? = nil, lastModifyTimestamp: Int64? = nil, extension: String? = nil) {
            self.userId = userId
            self.userIdList = userIdList
            self.tags = tags
            self.dislikeInfoList = dislikeInfoList
            self.age = age
            self.gender = gender
            self.degree = degree
            self.school = school
            self.occupation = occupation
            self.industry = industry
            self.residentCountry = residentCountry
            self.residentProvince = residentProvince
            self.residentCity = residentCity
            self.registerTimestamp = registerTimestamp
            self.membershipLevel = membershipLevel
            self.lastLoginTimestamp = lastLoginTimestamp
            self.lastLoginIp = lastLoginIp
            self.lastModifyTimestamp = lastModifyTimestamp
            self.`extension` = `extension`
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userIdList = "UserIdList"
            case tags = "Tags"
            case dislikeInfoList = "DislikeInfoList"
            case age = "Age"
            case gender = "Gender"
            case degree = "Degree"
            case school = "School"
            case occupation = "Occupation"
            case industry = "Industry"
            case residentCountry = "ResidentCountry"
            case residentProvince = "ResidentProvince"
            case residentCity = "ResidentCity"
            case registerTimestamp = "RegisterTimestamp"
            case membershipLevel = "MembershipLevel"
            case lastLoginTimestamp = "LastLoginTimestamp"
            case lastLoginIp = "LastLoginIp"
            case lastModifyTimestamp = "LastModifyTimestamp"
            case `extension` = "Extension"
        }
    }

    /// 推荐返回的内容信息
    public struct RecItemData: TCOutputModel {
        /// 推荐的内容ID
        public let itemId: String

        /// 内容类型，同内容上报类型一致
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let itemType: String?

        /// 推荐追踪id，本次推荐内容产生的后续行为上报均要用该ItemTraceId上报。每次接口调用返回的ItemTraceId不同
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let itemTraceId: String?

        /// 推荐结果分，取值范围[0,1000000]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Float?

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case itemType = "ItemType"
            case itemTraceId = "ItemTraceId"
            case score = "Score"
        }
    }

    /// 用户ID信息
    public struct UserIdInfo: TCInputModel {
        /// 用户ID类型： <br/>● qq: qq号码 <br/>● qq_md5：qq的md5值 <br/>● imei：设备imei <br/>● imei_md5：imei的md5值 <br/>● idfa: Apple 向用户设备随机分配的设备标识符 <br/>● idfa_md5：idfa的md5值 <br/>● oaid：安卓10之后一种非永久性设备标识符 <br/>● oaid_md5：md5后的oaid <br/>● wx_openid：微信openid <br/>● qq_openid：QQ的openid <br/>● phone：电话号码 <br/>● phone_md5：md5后的电话号码 <br/>● phone_sha256：SHA256加密的手机号 <br/>● phone_sm3：国密SM3加密的手机号 <br/>（如当前类型不满足，请<a href="https://console.cloud.tencent.com/workorder/category" target="_blank">提单</a>沟通解决方案）
        public let type: String

        /// 用户ID值
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
}
