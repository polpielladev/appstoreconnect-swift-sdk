// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterDetails.WithID {
	public var gameCenterAppVersions: GameCenterAppVersions {
		GameCenterAppVersions(path: path + "/gameCenterAppVersions")
	}

	public struct GameCenterAppVersions {
		/// Path: `/v1/gameCenterDetails/{id}/gameCenterAppVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterAppVersionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterDetails-gameCenterAppVersions-get_to_many_related")
		}

		public struct GetParameters {
			public var filterEnabled: [String]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]?
			public var limit: Int?
			public var limitCompatibilityVersions: Int?
			public var include: [Include]?

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case alternativeDistributionPackage
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case appVersionState
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case reviewType
				case routingAppCoverage
				case versionString
			}

			public enum FieldsGameCenterAppVersions: String, Codable, CaseIterable {
				case appStoreVersion
				case compatibilityVersions
				case enabled
			}

			public enum Include: String, Codable, CaseIterable {
				case appStoreVersion
				case compatibilityVersions
			}

			public init(filterEnabled: [String]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]? = nil, limit: Int? = nil, limitCompatibilityVersions: Int? = nil, include: [Include]? = nil) {
				self.filterEnabled = filterEnabled
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsGameCenterAppVersions = fieldsGameCenterAppVersions
				self.limit = limit
				self.limitCompatibilityVersions = limitCompatibilityVersions
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterEnabled, forKey: "filter[enabled]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsGameCenterAppVersions, forKey: "fields[gameCenterAppVersions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitCompatibilityVersions, forKey: "limit[compatibilityVersions]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}